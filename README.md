# spatialR_for_ArcGIS_Users


[![Actions Status](https://github.com/arc2r/book/workflows/bookdown/badge.svg)](https://github.com/arc2r/book/actions)



## Style Guide

Some basic text formatting rules for keeping the document consistent.


### Inline formatting

- formatting with __bold__, in the following cases:
    - dataset name (e.g __parking spots in the canton of Zurich__)
    
- formatting with _italics_, in the following cases:
    - referring to a tool (e.g `Select By Attributes`) 
    - operation (e.g __spatial subsetting__)

    
- formatting with this `format`, in the following cases:
    - package name (e.g `sf`)
    - function name (e.g `st_buffer`)
    
### Adding notes

If you want to highlight something important, you can add a block as shown below. This block will recieve the class "rmdnote", which is specified in [css/style.css]. Currently, the classes `rmdcaution, .rmdimportant, .rmdnote, .rmdtip, .rmdwarning` have the same layout, they all come from "Geocomputation with R" and might be specified on demand.

Btw: I don't really know what `block2` stands for, but I think each code block needs an engine to function properly, and it seems to work!

```` 
```{block2, type = "rmdnote"}
By the way: In the world of SQL this type of operation is not called "selection" but "filtering". Consequently, that is also the name used in `R`. In `R` as well as `SQL`, a *select* is done on columns in a dataset, not on rows (i.e. if you want to retain only a subset of the columns in a dataset).
```
```` 
    
    
## Dependencies

To capture the various dependencies on r-Packages, we follow the following logic (see also https://github.com/arc2r/book/issues/9): 



| Priority 	| Dependency (Package Necessary to:)            	| File        	| Repo        	| Field    	| Eg.                 	|
|----------	|-----------------------------------------------	|-------------	|-------------	|----------	|---------------------	|
| 1        	| Use the **data-package**                      	| DESCRIPTION 	| arc2r/arc2r 	| Imports  	| `sf`, `raster`          	|
| 2        	| To run the code described within **the book** 	| DESCRIPTION 	| arc2r/arc2r 	| Suggests 	| `gstat`, `tmap`, `dplyr`  	|
| 3        	| Render **the book**                           	| DESCRIPTION 	| arc2r/book  	| Imports  	| `bookdown`, `rmarkdown` 	|
