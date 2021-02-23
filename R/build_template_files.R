

library(yaml)
library(purrr)
library(stringr)
library(dplyr)
rmd_files_yaml <- yaml::read_yaml("_rmd_files.yaml")

filelist <- map(rmd_files_yaml, function(x){
  map(x[["chapters"]], function(y){
    file.path(y$folder,y$subchapters)
    })
  }) %>% unlist() %>% unname()


templatepath <- "template_rmds"


map(file.path(templatepath,dirname(filelist)), ~dir.create(.x,recursive = TRUE))

map(filelist, function(rmdfile){

  # Purl the file to get rid of all RMarkdown stuff
  purled_rfile <- knitr::purl(rmdfile,documentation = 1)
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
  
  writeLines(knited_rmdfile_lines2, file.path(templatepath,rmdfile))
  
  # file.copy(knited_rmdfile,file.path(templatepath,rmdfile)) <- it would be this simple if we didnt have to create these empty lines (above)
  file.remove(knited_rmdfile)
  file.remove(purled_rfile)
})
