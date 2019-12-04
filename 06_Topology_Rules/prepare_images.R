library(tidyverse)
library(magick)
library(glue)

orgimg <- image_read("06_Topology_Rules/topology_rules_poster.jpg")

veryleft <- 123
width <- 879 # approx
verytop <- 752
height <- 345
heightgap <- 39
widthgap <- 80

map(seq_len(8)-1,function(irow){
  map(seq_len(4)-1,function(icol){
    orgimg %>%
      image_crop(glue("{width}x{height}+{veryleft+icol*(widthgap+width)}+{verytop+irow*(heightgap+height)}")) %>%
      image_trim() %>%
      image_write(glue("06_Topology_Rules/images/{irow}_{icol}.jpg"))
  })
})

