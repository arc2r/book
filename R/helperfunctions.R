

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
