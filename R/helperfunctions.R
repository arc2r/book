

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
    }) %>%
    unlist() %>%
    unname()
}


update_bookdownyaml <- function(bookdown_yaml_file = "_bookdown.yml", rmd_files = "_rmd_files.yaml"){
  bookdown_yaml <- read_yaml(bookdown_yaml_file)
  bookdown_yaml$rmd_files <- yaml_to_rmdfiles(rmd_files)
  write_yaml(bookdown_yaml, bookdown_yaml_file)
}

update_bookdownyaml()
