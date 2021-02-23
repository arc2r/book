install.packages("yaml")
install.packages("purrr")
install.packages("stringr")
install.packages("dplyr")
install.packages("knitr")

library(yaml)
library(purrr)
library(stringr)
library(dplyr)
library(knitr)
rmd_files_yaml <- yaml::read_yaml("_rmd_files.yaml")

filelist <- map(rmd_files_yaml, function(x){
  if(is.list(x)){
    map(x[["chapters"]], function(y){
      file.path(y$folder,y$subchapters)
    })
  }
  }) %>% 
  unlist() %>% 
  unname()



filelist <- map_dfr(filelist, function(x){
  tibble(mylines = readLines(x,warn = FALSE)) %>%
    mutate(
      chunkboders = str_starts(mylines, "```"),
      cumsum = cumsum(chunkboders),
      inchunk = cumsum %% 2 == 1 | chunkboders,
      filename = x
    ) %>%
    filter(!inchunk) %>%
    filter(str_detect(mylines, "^#{1,}")) %>%
    dplyr::select(mylines,filename) 
})%>%
  mutate(
    level = str_length(str_match(mylines,"^#{1,}")[,1]),
    level = level-min(level),
    meta = str_match(mylines,"\\{(.+)\\}")[,2],
    mylines = str_remove(mylines, "\\{.+\\}"),
    mylines = str_remove(mylines, "#{1,}"),
    mylines = str_trim(mylines),
    tag = str_match(meta,"#(.+)\\s*")[,2],
    filename_new = str_replace_all(str_to_lower(mylines)," ","_"),
    filename_new = str_replace_all(filename_new,"[^a-z0-9_]",""),
    filename_new = file.path(dirname(filename),paste0(filename_new,".Rmd"))
  ) %>%
  group_by(filename) %>%
  filter(level == min(level)) %>%
  filter(row_number() == 1) %>%
  select(filename,filename_new)

templatepath <- "template_rmds"


map(file.path(templatepath,dirname(filelist$filename_new)), ~dir.create(.x,recursive = TRUE))

filelist %>%
  pmap(function(filename, filename_new){
      
      # Purl the file to get rid of all RMarkdown stuff
      purled_rfile <- knitr::purl(filename ,documentation = 1)
      # Spin the file to generate an rmd file from the R Script
      knited_rmdfile <- knitr::spin(purled_rfile,knit = FALSE)
      
      # These next lines are a hacky way to seperate the chunks by an empty line 
      # (the resuting rmd looks ugly otherwise)
      knited_rmdfile_lines <- readLines(knited_rmdfile)
      knited_rmdfile_chunkborder <- str_starts(knited_rmdfile_lines, "```")
      knited_rmdfile_suc <- which(lead(knited_rmdfile_chunkborder) & knited_rmdfile_chunkborder)
      id  <- c( seq_along(knited_rmdfile_lines), knited_rmdfile_suc+0.5 )
      knited_rmdfile_lines2 <- c(knited_rmdfile_lines,rep("",length(knited_rmdfile_suc)))
      knited_rmdfile_lines2 <- knited_rmdfile_lines2[order(id)]
      
      writeLines(knited_rmdfile_lines2, file.path(templatepath,filename_new))
      
      # file.copy(knited_rmdfile,file.path(templatepath,filename )) <- it would be this simple if we didnt have to create these empty lines (above)
      file.remove(knited_rmdfile)
      file.remove(purled_rfile)
  })

