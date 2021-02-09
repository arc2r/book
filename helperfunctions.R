

check_rmdfiles <- function(bookdown_yaml = "_bookdown.yml") {
  require(yaml)
  bookdown_yaml_read <- read_yaml(bookdown_yaml)
  rmd_files <- bookdown_yaml_read$rmd_files
  existing <- file.exists(rmd_files)
  
  if(any(!existing)){
    print("The following files do not exist:")
    rmd_files[!existing]
  } else{
    print("all good, all files specified in bookdown_yaml exist")
  }
  
}
