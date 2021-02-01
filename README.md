# spatialR_for_ArcGIS_Users

Work in Progress: A resource for people transitioning from ArcGIS to R for spatial stuff


## Some basic text formatting rules for keeping the document consistent.

- formatting with __bold__, in the following cases:
    - dataset name (e.g __parking spots in the canton of Zurich__)
    
- formatting with _italics_, in the following cases:
    - referring to a tool (e.g `Select By Attributes`) 
    - operation (e.g __spatial subsetting__)

    
- formatting with this `format`, in the following cases:
    - package name (e.g __sf__)
    - function name (e.g _st_buffer_)

    
    
## Dependencies

To capture the various dependencies on r-Packages, we follow the following logic (see also https://github.com/arc2r/book/issues/9): 



| Priority 	| Dependency (Package Necessary to:)            	| File        	| Repo        	| Field    	| Eg.                 	|
|----------	|-----------------------------------------------	|-------------	|-------------	|----------	|---------------------	|
| 1        	| Use the **data-package**                      	| DESCRIPTION 	| arc2r/arc2r 	| Imports  	| `sf`, `raster`          	|
| 2        	| To run the code described within **the book** 	| DESCRIPTION 	| arc2r/arc2r 	| Suggests 	| `gstat`, `tmap`, `dplyr`  	|
| 3        	| Render **the book**                           	| DESCRIPTION 	| arc2r/book  	| Imports  	| `bookdown`, `rmarkdown` 	|
