

check_rmdfiles_exists <- function(bookdown_yaml = "_bookdown.yml") {
  require(yaml)
  bookdown_yaml_read <- read_yaml(bookdown_yaml)
  rmd_files <- bookdown_yaml_read$rmd_files
  existing <- file.exists(rmd_files)
  
  if(any(!existing)){
    print("The following files are listed in your bookdown yaml but do not exist in your project")
    rmd_files[!existing]
  } else{
    print("all good, all files specified in bookdown_yaml exist")
  }
  
}
check_rmdfiles_missing <- function(bookdown_yaml = "_bookdown.yml") {
  require(yaml)
  require(stringr)
  bookdown_yaml_read <- read_yaml(bookdown_yaml)
  rmd_files <- bookdown_yaml_read$rmd_files
  
  rmd_files_all <- list.files(pattern = ".Rmd",full.names = TRUE,recursive = TRUE) %>% str_remove("./")
  
  existing <- rmd_files_all %in% rmd_files
  
  if(any(!existing)){
    print("The following files exist in you project but are not listed in your bookdown_yaml")
    rmd_files_all[!existing]
  } else{
    print("all good, all files specified in bookdown_yaml exist")
  }
  
}






yaml_to_rmdfiles <- function(rmd_files_yaml = "_rmd_files.yaml"){
  require(yaml)
  require(purrr)
  
  yaml::read_yaml(rmd_files_yaml) %>%
    map(function(part){
      
      index_rmd <- part$index
      
      subchapter_rmds <- map(part[["chapters"]], function(chapter){
        
        list(
          file.path(chapter$folder,chapter$index),
          file.path(chapter$folder,chapter$subchapters)
        )
      })
      
      return(list(index_rmd, subchapter_rmds))
    }) 
}


update_bookdownyaml <- function(bookdown_yaml_file = "_bookdown.yml", rmd_files = "_rmd_files.yaml"){
  bookdown_yaml <- read_yaml(bookdown_yaml_file)
  bookdown_yaml$rmd_files <- unlist(yaml_to_rmdfiles(rmd_files))
  write_yaml(bookdown_yaml, bookdown_yaml_file)
}



# This function depends on "rmd_files.yaml" and the way this yaml files captures
# the file structure of this rmd. The idea is, that the function extracts the
# headers > level2 (level 1 headers are hard to distinguish from r-chunk-comments)
# and returns a nested list with linkts to the chapters

# part: The first hierarchical level of our book ("introduction", geoprocessing tools" etc)
# must be the same name as specified in the yaml file, "_rmd_files.yaml")
# chapter: similar to part, but the name of the chapter as specified in the yaml file
# rmd_files_yaml: the name (including path if neccessary) of the yaml file

hierarchy_to_list <- function(part, chapter,rmd_files_yaml = "_rmd_files.yaml"){
  require(yaml)
  require(purrr)
  require(dplyr)
  require(stringr)
  struc <- read_yaml(rmd_files_yaml)
  
  subchapters <- struc[[part]]$chapters[[chapter]]
  
  file.path(subchapters$folder, subchapters$subchapters) %>%
    map_dfr(function(x){
      
      tibble(mylines = readLines(x)) %>%
        mutate(
          chunkboders = str_starts(mylines, "```"),
          cumsum = cumsum(chunkboders),
          inchunk = cumsum %% 2 == 1 | chunkboders
        ) %>%
        filter(!inchunk) %>%
        filter(str_detect(mylines, "^#{1,}")) %>%
        dplyr::select(mylines)
    }) %>%
    mutate(
      level = str_length(str_match(mylines,"^#{1,}")[,1]),
      level = level-min(level),
      meta = str_match(mylines,"\\{(.+)\\}")[,2],
      mylines = str_remove(mylines, "\\{.+\\}"),
      mylines = str_remove(mylines, "#{1,}"),
      mylines = str_trim(mylines),
      tag = str_match(meta,"#(.+)\\s*")[,2]
    ) %>%
    pmap_chr(function(mylines,level,meta,tag){
      paste0(
        paste(rep(" ",level*2),collapse = ""),
        "- ",
        "[",mylines,"]",
        ifelse(is.na(tag),"",paste0("(",tag,")")),
        "\n"
      )
    }) %>%
    cat()
}
