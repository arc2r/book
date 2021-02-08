---
output: github_document
---




# All things `R`-Spatial


[![Actions Status](https://github.com/arc2r/book/workflows/bookdown/badge.svg)](https://github.com/arc2r/book/actions)


## Geoprocessing tools


```
## 
## -- Column specification -----------------------------------------------
## cols(
##   Tool = col_character(),
##   Description = col_character(),
##   href = col_character(),
##   toolset = col_character(),
##   desc = col_character(),
##   toolb = col_character()
## )
```

```
## Warning in CheckNameReservedWord(path, check): Name 'Sort' is a
## reserved word as defined in NODE_RESERVED_NAMES_CONST. Using 'Sort2'
## instead.
```

```
##                                                                  levelName
## 1    3D Analyst toolbox                                                   
## 2     ¦--3D Features                                                      
## 3     ¦   ¦--Enclose Multipatch                                           
## 4     ¦   ¦--Is Closed 3D                                                 
## 5     ¦   ¦--Simplify 3D Line                                             
## 6     ¦   ¦--ASCII 3D To Feature Class                                    
## 7     ¦   ¦--Feature Class Z To ASCII                                     
## 8     ¦   ¦--Feature To 3D By Attribute                                   
## 9     ¦   ¦--Features From CityEngine Rules                               
## 10    ¦   ¦--Import 3D Files                                              
## 11    ¦   ¦--Layer 3D To Feature Class                                    
## 12    ¦   ¦--Extract Multipatch From Mesh                                 
## 13    ¦   ¦--Extract Power Lines From Point Cloud                         
## 14    ¦   ¦--LAS Building Multipatch                                      
## 15    ¦   ¦--Multipatch Footprint                                         
## 16    ¦   ¦--Regularize Adjacent Building Footprint                       
## 17    ¦   ¦--Regularize Building Footprint                                
## 18    ¦   ¦--Interpolate Polygon To Multipatch                            
## 19    ¦   ¦--Interpolate Shape                                            
## 20    ¦   °--Update Feature Z                                             
## 21    ¦--3D Intersections                                                 
## 22    ¦   ¦--Fence Diagram                                                
## 23    ¦   ¦--Intersect 3D                                                 
## 24    ¦   ¦--Intersect 3D Line With Multipatch                            
## 25    ¦   ¦--Intersect 3D Line With Surface                               
## 26    ¦   ¦--Intersect 3D Lines                                           
## 27    ¦   °--Stack Profile                                                
## 28    ¦--3D Proximity                                                     
## 29    ¦   ¦--Buffer 3D                                                    
## 30    ¦   ¦--Inside 3D                                                    
## 31    ¦   ¦--Locate LAS Points By Proximity                               
## 32    ¦   ¦--Near 3D                                                      
## 33    ¦   °--Union 3D                                                     
## 34    ¦--Area and Volume                                                  
## 35    ¦   ¦--Cut Fill                                                     
## 36    ¦   ¦--Difference 3D                                                
## 37    ¦   ¦--Extrude Between                                              
## 38    ¦   ¦--Minimum Bounding Volume                                      
## 39    ¦   ¦--Polygon Volume                                               
## 40    ¦   ¦--Surface Difference                                           
## 41    ¦   °--Surface Volume                                               
## 42    ¦--LAS Dataset                                                      
## 43    ¦   ¦--Colorize LAS                                                 
## 44    ¦   ¦--Extract LAS                                                  
## 45    ¦   ¦--Thin LAS                                                     
## 46    ¦   ¦--Tile LAS                                                     
## 47    ¦   ¦--Change LAS Class Codes                                       
## 48    ¦   ¦--Classify LAS Building                                        
## 49    ¦   ¦--Classify LAS By Height                                       
## 50    ¦   ¦--Classify LAS Ground                                          
## 51    ¦   ¦--Classify LAS Noise                                           
## 52    ¦   ¦--Classify LAS Overlap                                         
## 53    ¦   ¦--Set LAS Class Codes Using Features                           
## 54    ¦   ¦--Set LAS Class Codes Using Raster                             
## 55    ¦   ¦--LAS Dataset To TIN                                           
## 56    ¦   ¦--LAS To Multipoint                                            
## 57    ¦   ¦--Add Files To LAS Dataset                                     
## 58    ¦   ¦--Build LAS Dataset Pyramid                                    
## 59    ¦   ¦--Create LAS Dataset                                           
## 60    ¦   ¦--LAS Dataset Statistics                                       
## 61    ¦   ¦--LAS Point Statistics As Raster                               
## 62    ¦   °--Remove Files From LAS Dataset                                
## 63    ¦--Raster                                                           
## 64    ¦   ¦--Conversion                                                   
## 65    ¦   ¦--Interpolation                                                
## 66    ¦   ¦--Math                                                         
## 67    ¦   ¦--Reclass                                                      
## 68    ¦   ¦--Surface                                                      
## 69    ¦   ¦--NA                                                           
## 70    ¦   ¦--Add Rasters To Mosaic Dataset                                
## 71    ¦   ¦--Alter Mosaic Dataset Schema                                  
## 72    ¦   ¦--Analyze Mosaic Dataset                                       
## 73    ¦   ¦--Build Boundary                                               
## 74    ¦   ¦--Build Footprints                                             
## 75    ¦   ¦--Build Mosaic Dataset Item Cache                              
## 76    ¦   ¦--Build Overviews                                              
## 77    ¦   ¦--Build Seamlines                                              
## 78    ¦   ¦--Calculate Cell Size Ranges                                   
## 79    ¦   ¦--Clear Pixel Cache                                            
## 80    ¦   ¦--Color Balance Mosaic Dataset                                 
## 81    ¦   ¦--Compute Dirty Area                                           
## 82    ¦   ¦--Compute Mosaic Candidates                                    
## 83    ¦   ¦--Create Mosaic Dataset                                        
## 84    ¦   ¦--Create Referenced Mosaic Dataset                             
## 85    ¦   ¦--Define Mosaic Dataset NoData                                 
## 86    ¦   ¦--Define Overviews                                             
## 87    ¦   ¦--Delete Mosaic Dataset                                        
## 88    ¦   ¦--Edit Raster Function                                         
## 89    ¦   ¦--Export Mosaic Dataset Geometry                               
## 90    ¦   ¦--Export Mosaic Dataset Items                                  
## 91    ¦   ¦--Export Mosaic Dataset Paths                                  
## 92    ¦   ¦--Generate Exclude Area                                        
## 93    ¦   ¦--Generate Raster Collection                                   
## 94    ¦   ¦--Import Mosaic Dataset Geometry                               
## 95    ¦   ¦--Merge Mosaic Dataset Items                                   
## 96    ¦   ¦--Mosaic Dataset To Mobile Mosaic Dataset                      
## 97    ¦   ¦--Remove Rasters From Mosaic Dataset                           
## 98    ¦   ¦--Repair Mosaic Dataset Paths                                  
## 99    ¦   ¦--Set Mosaic Dataset Properties                                
## 100   ¦   ¦--Split Mosaic Dataset Items                                   
## 101   ¦   ¦--Synchronize Mosaic Dataset                                   
## 102   ¦   ¦--Analyze Control Points                                       
## 103   ¦   ¦--Append Control Points                                        
## 104   ¦   ¦--Apply Block Adjustment                                       
## 105   ¦   ¦--Build Stereo Model                                           
## 106   ¦   ¦--Compute Block Adjustment                                     
## 107   ¦   ¦--Compute Camera Model                                         
## 108   ¦   ¦--Compute Control Points                                       
## 109   ¦   ¦--Compute Fiducials                                            
## 110   ¦   ¦--Compute Tie Points                                           
## 111   ¦   ¦--Export Frame and Camera Parameters                           
## 112   ¦   ¦--Generate Block Adjustment Report                             
## 113   ¦   ¦--Generate Point Cloud                                         
## 114   ¦   ¦--Interpolate From Point Cloud                                 
## 115   ¦   ¦--Match Control Points                                         
## 116   ¦   ¦--Update Interior Orientation                                  
## 117   ¦   ¦--Copy Raster                                                  
## 118   ¦   ¦--Create Random Raster                                         
## 119   ¦   ¦--Create Raster Dataset                                        
## 120   ¦   ¦--Download Rasters                                             
## 121   ¦   ¦--Generate Raster From Raster Function                         
## 122   ¦   ¦--Mosaic                                                       
## 123   ¦   ¦--Mosaic To New Raster                                         
## 124   ¦   ¦--Workspace To Raster Dataset                                  
## 125   ¦   ¦--Clip Raster                                                  
## 126   ¦   ¦--Composite Bands                                              
## 127   ¦   ¦--Compute Pansharpen Weights                                   
## 128   ¦   ¦--Create Ortho Corrected Raster Dataset                        
## 129   ¦   ¦--Create Pansharpened Raster Dataset                           
## 130   ¦   ¦--Extract Subdataset                                           
## 131   ¦   ¦--Generate Table From Raster Function                          
## 132   ¦   ¦--Raster To DTED                                               
## 133   ¦   ¦--Resample                                                     
## 134   ¦   ¦--Split Raster                                                 
## 135   ¦   ¦--Add Colormap                                                 
## 136   ¦   ¦--Batch Build Pyramids                                         
## 137   ¦   ¦--Batch Calculate Statistics                                   
## 138   ¦   ¦--Build Pyramids                                               
## 139   ¦   ¦--Build Pyramids And Statistics                                
## 140   ¦   ¦--Build Raster Attribute Table                                 
## 141   ¦   ¦--Calculate Statistics                                         
## 142   ¦   ¦--Convert Raster Function  Template                            
## 143   ¦   ¦--Delete Colormap                                              
## 144   ¦   ¦--Delete Raster Attribute Table                                
## 145   ¦   ¦--Export Raster World File                                     
## 146   ¦   ¦--Get Cell Value                                               
## 147   ¦   ¦--Get Raster Properties                                        
## 148   ¦   °--Set Raster Properties                                        
## 149   ¦--Statistics                                                       
## 150   ¦   ¦--Add Surface Information                                      
## 151   ¦   ¦--Add Z Information                                            
## 152   ¦   ¦--LAS Height Metrics                                           
## 153   ¦   ¦--LAS Point Statistics By Area                                 
## 154   ¦   ¦--Point File Information                                       
## 155   ¦   ¦--Enrich                                                       
## 156   ¦   ¦--Frequency                                                    
## 157   ¦   ¦--Summarize Nearby                                             
## 158   ¦   ¦--Summarize Within                                             
## 159   ¦   ¦--Summary Statistics                                           
## 160   ¦   °--Tabulate Intersection                                        
## 161   ¦--Terrain Dataset                                                  
## 162   ¦   °--NA                                                           
## 163   ¦--TIN Dataset                                                      
## 164   ¦   ¦--Copy TIN                                                     
## 165   ¦   ¦--Create TIN                                                   
## 166   ¦   ¦--Decimate TIN Nodes                                           
## 167   ¦   ¦--Delineate TIN Data Area                                      
## 168   ¦   ¦--Edit TIN                                                     
## 169   ¦   ¦--LandXML To TIN                                               
## 170   ¦   ¦--TIN Domain                                                   
## 171   ¦   ¦--TIN Edge                                                     
## 172   ¦   ¦--TIN Line                                                     
## 173   ¦   ¦--TIN Node                                                     
## 174   ¦   ¦--TIN Polygon Tag                                              
## 175   ¦   ¦--TIN to Raster                                                
## 176   ¦   °--TIN Triangle                                                 
## 177   ¦--Triangulated Surface                                             
## 178   ¦   ¦--Decimate TIN Nodes                                           
## 179   ¦   ¦--Extrude Between                                              
## 180   ¦   ¦--Interpolate Polygon To Multipatch                            
## 181   ¦   ¦--Locate Outliers                                              
## 182   ¦   ¦--Polygon Volume                                               
## 183   ¦   ¦--Surface Aspect                                               
## 184   ¦   ¦--Surface Contour                                              
## 185   ¦   ¦--Surface Difference                                           
## 186   ¦   °--Surface Slope                                                
## 187   ¦--Visibility                                                       
## 188   ¦   ¦--Construct Sight Lines                                        
## 189   ¦   ¦--Intervisibility                                              
## 190   ¦   ¦--Line Of Sight                                                
## 191   ¦   ¦--Observer Points                                              
## 192   ¦   ¦--Skyline                                                      
## 193   ¦   ¦--Skyline Barrier                                              
## 194   ¦   ¦--Skyline Graph                                                
## 195   ¦   ¦--Sun Shadow Frequency                                         
## 196   ¦   ¦--Sun Shadow Volume                                            
## 197   ¦   ¦--Viewshed                                                     
## 198   ¦   ¦--Viewshed 2                                                   
## 199   ¦   °--Visibility                                                   
## 200   ¦--Extract                                                          
## 201   ¦   ¦--Clip                                                         
## 202   ¦   ¦--Select                                                       
## 203   ¦   ¦--Split                                                        
## 204   ¦   ¦--Split By Attributes                                          
## 205   ¦   °--Table Select                                                 
## 206   ¦--Overlay                                                          
## 207   ¦   ¦--Apportion Polygon                                            
## 208   ¦   ¦--Count Overlapping Features                                   
## 209   ¦   ¦--Erase                                                        
## 210   ¦   ¦--Identity                                                     
## 211   ¦   ¦--Intersect                                                    
## 212   ¦   ¦--Remove Overlap (multiple)                                    
## 213   ¦   ¦--Spatial Join                                                 
## 214   ¦   ¦--Symmetrical Difference                                       
## 215   ¦   ¦--Union                                                        
## 216   ¦   ¦--Update                                                       
## 217   ¦   ¦--Weighted Sum                                                 
## 218   ¦   ¦--Fuzzy Membership                                             
## 219   ¦   ¦--Fuzzy Overlay                                                
## 220   ¦   ¦--Locate Regions                                               
## 221   ¦   °--Weighted Overlay                                             
## 222   ¦--Pairwise Overlay                                                 
## 223   ¦   ¦--Pairwise Buffer                                              
## 224   ¦   ¦--Pairwise Clip                                                
## 225   ¦   ¦--Pairwise Dissolve                                            
## 226   ¦   ¦--Pairwise Erase                                               
## 227   ¦   ¦--Pairwise Integrate                                           
## 228   ¦   °--Pairwise Intersect                                           
## 229   ¦--Proximity                                                        
## 230   ¦   ¦--Buffer                                                       
## 231   ¦   ¦--Create Thiessen Polygons                                     
## 232   ¦   ¦--Generate Near Table                                          
## 233   ¦   ¦--Generate Origin-Destination Links                            
## 234   ¦   ¦--Graphic Buffer                                               
## 235   ¦   ¦--Multiple Ring Buffer                                         
## 236   ¦   ¦--Near                                                         
## 237   ¦   °--Polygon Neighbors                                            
## 238   ¦--Airports                                                         
## 239   ¦   °--NA                                                           
## 240   ¦--Charting                                                         
## 241   ¦   °--NA                                                           
## 242   ¦--Analysis                                                         
## 243   ¦   ¦--Calculate Market Penetration                                 
## 244   ¦   ¦--Color Coded Layer                                            
## 245   ¦   ¦--Enrich Layer                                                 
## 246   ¦   ¦--Generate Desire Lines                                        
## 247   ¦   ¦--Generate Points from Business Listings                       
## 248   ¦   ¦--Find Overlaps                                                
## 249   ¦   ¦--NA                                                           
## 250   ¦   ¦--Add Field To Analysis Layer                                  
## 251   ¦   ¦--Add Locations                                                
## 252   ¦   ¦--Add Vehicle Routing Problem Breaks                           
## 253   ¦   ¦--Add Vehicle Routing Problem Routes                           
## 254   ¦   ¦--Calculate Locations                                          
## 255   ¦   ¦--Copy Traversed Source Features                               
## 256   ¦   ¦--Directions                                                   
## 257   ¦   ¦--Make Closest Facility Analysis Layer                         
## 258   ¦   ¦--Make Location-Allocation Analysis Layer                      
## 259   ¦   ¦--Make OD Cost Matrix Analysis Layer                           
## 260   ¦   ¦--Make Route Analysis Layer                                    
## 261   ¦   ¦--Make Service Area Analysis Layer                             
## 262   ¦   ¦--Make Vehicle Routing Problem Analysis Layer                  
## 263   ¦   ¦--Share As Route Layers                                        
## 264   ¦   ¦--Solve                                                        
## 265   ¦   ¦--Make Closest Facility Layer                                  
## 266   ¦   ¦--Make Location-Allocation Layer                               
## 267   ¦   ¦--Make OD Cost Matrix Layer                                    
## 268   ¦   ¦--Make Route Layer                                             
## 269   ¦   ¦--Make Service Area Layer                                      
## 270   ¦   ¦--Solve Vehicle Routing Problem                                
## 271   ¦   ¦--Update Analysis Layer Attribute Parameter                    
## 272   ¦   ¦--Add Level Variables                                          
## 273   ¦   ¦--Add Territory Barriers                                       
## 274   ¦   ¦--Set Balance Variables                                        
## 275   ¦   ¦--Set Territory Attribute Constraints                          
## 276   ¦   ¦--Set Territory Distance Parameters                            
## 277   ¦   ¦--Set Territory Level Options                                  
## 278   ¦   °--Solve Territories                                            
## 279   ¦--Modeling                                                         
## 280   ¦   ¦--Huff Model                                                   
## 281   ¦   °--Huff Model Calibration                                       
## 282   ¦--Reports                                                          
## 283   ¦   °--Summary Reports                                              
## 284   ¦--Statistical Data Collections                                     
## 285   ¦   °--Generate SDCX Index                                          
## 286   ¦--Suitability Analysis                                             
## 287   ¦   ¦--Add Field Based Suitability Criteria                         
## 288   ¦   ¦--Add Point Layer Based Suitability Criteria                   
## 289   ¦   ¦--Add Variable Based Suitability Criteria                      
## 290   ¦   ¦--Calculate Suitability Score                                  
## 291   ¦   ¦--Make Suitability Analysis Layer                              
## 292   ¦   ¦--Remove Suitability Criteria                                  
## 293   ¦   °--Set Criteria Properties                                      
## 294   ¦--Target Marketing                                                 
## 295   ¦   ¦--Analyze Market Area Gap                                      
## 296   ¦   ¦--Analyze Market Potential                                     
## 297   ¦   ¦--Create Target Group                                          
## 298   ¦   ¦--Export Segmentation Profile                                  
## 299   ¦   ¦--Generate\r\nCustomer Segmentation Profile                    
## 300   ¦   ¦--Generate\r\nMarket Area Segmentation Profile                 
## 301   ¦   ¦--Generate\r\nSegmentation Profile Report                      
## 302   ¦   ¦--Generate Survey Report For Profile                           
## 303   ¦   ¦--Generate Survey Report For Targets                           
## 304   ¦   ¦--Generate Target Group Layer                                  
## 305   ¦   ¦--Generate Target Layer                                        
## 306   ¦   ¦--Generate Target Penetration Layer                            
## 307   ¦   ¦--Import Segmentation Profile                                  
## 308   ¦   °--Import Survey Profiles                                       
## 309   ¦--Trade Areas                                                      
## 310   ¦   ¦--Assign Customers By Distance                                 
## 311   ¦   ¦--Generate Approximate Drive Times                             
## 312   ¦   ¦--Generate Customer Derived Trade Areas                        
## 313   ¦   ¦--Generate Drive Time Trade Area                               
## 314   ¦   ¦--Generate Geographies From Overlay                            
## 315   ¦   ¦--Generate Standard Geography Trade Areas                      
## 316   ¦   ¦--Generate Threshold Drive Times                               
## 317   ¦   ¦--Generate Threshold Rings                                     
## 318   ¦   ¦--Generate Trade Area Rings                                    
## 319   ¦   ¦--Measure Cannibalization                                      
## 320   ¦   ¦--Remove Overlap                                               
## 321   ¦   °--Remove Overlap (multiple)                                    
## 322   ¦--Annotation                                                       
## 323   ¦   ¦--Annotate Selected Features                                   
## 324   ¦   ¦--Contour Annotation                                           
## 325   ¦   ¦--Convert Labels To Annotation                                 
## 326   ¦   ¦--Convert Labels To Graphics                                   
## 327   ¦   ¦--Map Server Cache Tiling Scheme To Polygons                   
## 328   ¦   ¦--Tiled Labels To Annotation                                   
## 329   ¦   °--Update Annotation Reference Scale                            
## 330   ¦--Cartographic Refinement                                          
## 331   ¦   ¦--Align Marker To Stroke Or Fill                               
## 332   ¦   ¦--Calculate Line Caps                                          
## 333   ¦   ¦--Calculate Polygon Main Angle                                 
## 334   ¦   ¦--Create Overpass                                              
## 335   ¦   ¦--Create Underpass                                             
## 336   ¦   ¦--Disperse Markers                                             
## 337   ¦   ¦--Generate Hachures For Defined Slopes                         
## 338   ¦   ¦--Set Control Point At Intersect                               
## 339   ¦   °--Set Control Point By Angle                                   
## 340   ¦--Generalization                                                   
## 341   ¦   ¦--Aggregate Points                                             
## 342   ¦   ¦--Aggregate Polygons                                           
## 343   ¦   ¦--Collapse Road Detail                                         
## 344   ¦   ¦--Create Cartographic Partitions                               
## 345   ¦   ¦--Delineate Built-Up Areas                                     
## 346   ¦   ¦--Merge Divided Roads                                          
## 347   ¦   ¦--Simplify Building                                            
## 348   ¦   ¦--Simplify Line                                                
## 349   ¦   ¦--Simplify Polygon                                             
## 350   ¦   ¦--Simplify Shared Edges                                        
## 351   ¦   ¦--Smooth Line                                                  
## 352   ¦   ¦--Smooth Polygon                                               
## 353   ¦   ¦--Smooth Shared Edges                                          
## 354   ¦   ¦--Thin Road Network                                            
## 355   ¦   ¦--Dissolve                                                     
## 356   ¦   ¦--Eliminate                                                    
## 357   ¦   ¦--Eliminate Polygon Part                                       
## 358   ¦   ¦--Aggregate                                                    
## 359   ¦   ¦--Boundary Clean                                               
## 360   ¦   ¦--Expand                                                       
## 361   ¦   ¦--Majority Filter                                              
## 362   ¦   ¦--Nibble                                                       
## 363   ¦   ¦--Region Group                                                 
## 364   ¦   ¦--Shrink                                                       
## 365   ¦   °--Thin                                                         
## 366   ¦--Graphic Conflicts                                                
## 367   ¦   ¦--Detect Graphic Conflict                                      
## 368   ¦   ¦--Propagate Displacement                                       
## 369   ¦   ¦--Resolve Building Conflicts                                   
## 370   ¦   °--Resolve Road Conflicts                                       
## 371   ¦--Map Series                                                       
## 372   ¦   ¦--Calculate Adjacent Fields                                    
## 373   ¦   ¦--Calculate Central Meridian and Parallels                     
## 374   ¦   ¦--Calculate Grid Convergence Angle                             
## 375   ¦   ¦--Calculate UTM Zone                                           
## 376   ¦   ¦--Grid Index Features                                          
## 377   ¦   °--Strip Map Index Features                                     
## 378   ¦--Masking                                                          
## 379   ¦   ¦--Cul-De-Sac Masks                                             
## 380   ¦   ¦--Feature Outline Masks                                        
## 381   ¦   °--Intersecting Layers Masks                                    
## 382   ¦--Excel                                                            
## 383   ¦   ¦--Excel To Table                                               
## 384   ¦   °--Table To Excel                                               
## 385   ¦--From Raster                                                      
## 386   ¦   ¦--Raster to ASCII                                              
## 387   ¦   ¦--Raster to Float                                              
## 388   ¦   ¦--Raster to Point                                              
## 389   ¦   ¦--Raster to Polygon                                            
## 390   ¦   °--Raster to Polyline                                           
## 391   ¦--From WFS                                                         
## 392   ¦   °--WFS To Feature Class                                         
## 393   ¦--GPS                                                              
## 394   ¦   ¦--Features To GPX                                              
## 395   ¦   °--GPX To Features                                              
## 396   ¦--JSON                                                             
## 397   ¦   ¦--Features To JSON                                             
## 398   ¦   °--JSON To Features                                             
## 399   ¦--KML                                                              
## 400   ¦   ¦--KML To Layer                                                 
## 401   ¦   ¦--Layer To KML                                                 
## 402   ¦   °--Map To KML                                                   
## 403   ¦--LAS                                                              
## 404   ¦   ¦--Convert LAS                                                  
## 405   ¦   °--LAS Dataset To Raster                                        
## 406   ¦--To CAD                                                           
## 407   ¦   ¦--Add CAD Fields                                               
## 408   ¦   °--Export to CAD                                                
## 409   ¦--To Collada                                                       
## 410   ¦   °--Multipatch To Collada                                        
## 411   ¦--To dBASE                                                         
## 412   ¦   °--Table To dBASE                                               
## 413   ¦--To Geodatabase                                                   
## 414   ¦   ¦--BIM File To Geodatabase                                      
## 415   ¦   ¦--CAD To Geodatabase                                           
## 416   ¦   ¦--Extract Locations From Document                              
## 417   ¦   ¦--Extract Locations From Text                                  
## 418   ¦   ¦--Feature Class To Feature Class                               
## 419   ¦   ¦--Feature Class To Geodatabase                                 
## 420   ¦   ¦--Mobile Geodatabase To File Geodatabase                       
## 421   ¦   ¦--Raster To Geodatabase                                        
## 422   ¦   ¦--Table To Geodatabase                                         
## 423   ¦   °--Table To Table                                               
## 424   ¦--To GeoPackage                                                    
## 425   ¦   °--Add Raster To GeoPackage                                     
## 426   ¦--To Raster                                                        
## 427   ¦   ¦--Feature to Raster                                            
## 428   ¦   ¦--Multipatch to Raster                                         
## 429   ¦   ¦--Point to Raster                                              
## 430   ¦   ¦--Polygon to Raster                                            
## 431   ¦   ¦--Polyline to Raster                                           
## 432   ¦   ¦--Raster To Other Format                                       
## 433   ¦   ¦--ASCII to Raster                                              
## 434   ¦   ¦--DEM to Raster                                                
## 435   ¦   °--Float to Raster                                              
## 436   ¦--To Shapefile                                                     
## 437   ¦   °--Feature Class to Shapefile                                   
## 438   ¦--Transit Feed (GTFS)                                              
## 439   ¦   ¦--Connect Network Dataset Transit Sources To Streets           
## 440   ¦   ¦--Features To GTFS Shapes                                      
## 441   ¦   ¦--Features To GTFS Stops                                       
## 442   ¦   ¦--Generate Shapes Features From GTFS                           
## 443   ¦   ¦--GTFS Shapes To Features                                      
## 444   ¦   ¦--GTFS Stops To Features                                       
## 445   ¦   °--GTFS To Network Dataset Transit Sources                      
## 446   ¦--3D Objects                                                       
## 447   ¦   ¦--Add 3D Formats To Multipatch                                 
## 448   ¦   °--Remove 3D Formats From Multipatch                            
## 449   ¦--Archiving                                                        
## 450   ¦   ¦--Disable Archiving                                            
## 451   ¦   ¦--Enable Archiving                                             
## 452   ¦   °--Trim Archive History                                         
## 453   ¦--Attachments                                                      
## 454   ¦   ¦--Add Attachments                                              
## 455   ¦   ¦--Disable Attachments                                          
## 456   ¦   ¦--Downgrade Attachments                                        
## 457   ¦   ¦--Enable Attachments                                           
## 458   ¦   ¦--Generate Attachment Match Table                              
## 459   ¦   ¦--Remove Attachments                                           
## 460   ¦   °--Upgrade Attachments                                          
## 461   ¦--Attribute Rules                                                  
## 462   ¦   ¦--Add Attribute Rule                                           
## 463   ¦   ¦--Alter Attribute Rule                                         
## 464   ¦   ¦--Delete Attribute Rule                                        
## 465   ¦   ¦--Disable Attribute Rules                                      
## 466   ¦   ¦--Enable Attribute Rules                                       
## 467   ¦   ¦--Evaluate Rules                                               
## 468   ¦   ¦--Export Attribute Rules                                       
## 469   ¦   ¦--Import Attribute Rules                                       
## 470   ¦   °--Reorder Attribute Rule                                       
## 471   ¦--Contingent Values                                                
## 472   ¦   ¦--Add Contingent Value                                         
## 473   ¦   ¦--Alter Field Group                                            
## 474   ¦   ¦--Create Field Group                                           
## 475   ¦   ¦--Delete Field Group                                           
## 476   ¦   ¦--Export Contingent Values                                     
## 477   ¦   ¦--Import Contingent Values                                     
## 478   ¦   °--Remove Contingent Value                                      
## 479   ¦--Data Comparison                                                  
## 480   ¦   ¦--Detect Feature Changes                                       
## 481   ¦   ¦--Feature Compare                                              
## 482   ¦   ¦--File Compare                                                 
## 483   ¦   ¦--Raster Compare                                               
## 484   ¦   ¦--Table Compare                                                
## 485   ¦   °--TIN Compare                                                  
## 486   ¦--Distributed  Geodatabase                                         
## 487   ¦   ¦--Create Replica                                               
## 488   ¦   ¦--Disable Replica Tracking                                     
## 489   ¦   ¦--Enable Replica Tracking                                      
## 490   ¦   ¦--Synchronize Changes                                          
## 491   ¦   °--Unregister Replica                                           
## 492   ¦--Domains                                                          
## 493   ¦   ¦--Add Coded Value To Domain                                    
## 494   ¦   ¦--Alter Domain                                                 
## 495   ¦   ¦--Assign Domain To Field                                       
## 496   ¦   ¦--Create Domain                                                
## 497   ¦   ¦--Delete Coded Value From Domain                               
## 498   ¦   ¦--Delete Domain                                                
## 499   ¦   ¦--Domain To Table                                              
## 500   ¦   ¦--Remove Domain From Field                                     
## 501   ¦   ¦--Set Value For Range Domain                                   
## 502   ¦   ¦--Sort Coded Value Domain                                      
## 503   ¦   °--Table To Domain                                              
## 504   ¦--Feature Binning                                                  
## 505   ¦   ¦--Disable Feature Binning                                      
## 506   ¦   ¦--Enable Feature Binning                                       
## 507   ¦   °--Manage Feature Bin Cache                                     
## 508   ¦--Feature Class                                                    
## 509   ¦   ¦--Append Annotation Feature Classes                            
## 510   ¦   ¦--Create Feature Class                                         
## 511   ¦   ¦--Create Unregistered Feature Class                            
## 512   ¦   ¦--Integrate                                                    
## 513   ¦   ¦--Recalculate Feature Class Extent                             
## 514   ¦   °--Set Feature Class Split Model                                
## 515   ¦--Features                                                         
## 516   ¦   ¦--Add Geometry Attributes                                      
## 517   ¦   ¦--Add XY Coordinates                                           
## 518   ¦   ¦--Adjust 3D Z                                                  
## 519   ¦   ¦--Bearing Distance To Line                                     
## 520   ¦   ¦--Calculate Geometry Attributes                                
## 521   ¦   ¦--Check Geometry                                               
## 522   ¦   ¦--Copy Features                                                
## 523   ¦   ¦--Delete Features                                              
## 524   ¦   ¦--Dice                                                         
## 525   ¦   ¦--Feature Envelope To Polygon                                  
## 526   ¦   ¦--Feature To Line                                              
## 527   ¦   ¦--Feature To Point                                             
## 528   ¦   ¦--Feature To Polygon                                           
## 529   ¦   ¦--Feature Vertices To Points                                   
## 530   ¦   ¦--Geodetic Densify                                             
## 531   ¦   ¦--Minimum Bounding Geometry                                    
## 532   ¦   ¦--Multipart To Singlepart                                      
## 533   ¦   ¦--Points To Line                                               
## 534   ¦   ¦--Polygon To Line                                              
## 535   ¦   ¦--Repair Geometry                                              
## 536   ¦   ¦--Split Line At Point                                          
## 537   ¦   ¦--Split Line At Vertices                                       
## 538   ¦   ¦--Subdivide Polygon                                            
## 539   ¦   ¦--Table To Ellipse                                             
## 540   ¦   ¦--Unsplit Line                                                 
## 541   ¦   ¦--XY Table To Point                                            
## 542   ¦   °--XY To Line                                                   
## 543   ¦--Fields                                                           
## 544   ¦   ¦--Add Field                                                    
## 545   ¦   ¦--Add Fields (multiple)                                        
## 546   ¦   ¦--Add Global IDs                                               
## 547   ¦   ¦--Add GPS Metadata Fields                                      
## 548   ¦   ¦--Add Incrementing ID Field                                    
## 549   ¦   ¦--Alter Field                                                  
## 550   ¦   ¦--Assign Default To Field                                      
## 551   ¦   ¦--Calculate End Time                                           
## 552   ¦   ¦--Calculate Field                                              
## 553   ¦   ¦--Calculate Fields (multiple)                                  
## 554   ¦   ¦--Convert Time Field                                           
## 555   ¦   ¦--Convert Time Zone                                            
## 556   ¦   ¦--Delete Field                                                 
## 557   ¦   ¦--Disable COGO                                                 
## 558   ¦   ¦--Disable Editor Tracking                                      
## 559   ¦   ¦--Enable COGO                                                  
## 560   ¦   ¦--Enable Editor Tracking                                       
## 561   ¦   ¦--Encode Field                                                 
## 562   ¦   ¦--Reclassify Field                                             
## 563   ¦   ¦--Standardize Field                                            
## 564   ¦   ¦--Transform Field                                              
## 565   ¦   °--Transpose Fields                                             
## 566   ¦--File Geodatabase                                                 
## 567   ¦   ¦--Compact                                                      
## 568   ¦   ¦--Compress File Geodatabase Data                               
## 569   ¦   ¦--Generate File Geodatabase License                            
## 570   ¦   ¦--Generate Licensed File Geodatabase                           
## 571   ¦   ¦--Recover File Geodatabase                                     
## 572   ¦   °--Uncompress File Geodatabase Data                             
## 573   ¦--General                                                          
## 574   ¦   ¦--Analyze Tools For Pro                                        
## 575   ¦   ¦--Append                                                       
## 576   ¦   ¦--Copy                                                         
## 577   ¦   ¦--Create Database View                                         
## 578   ¦   ¦--Delete                                                       
## 579   ¦   ¦--Delete Identical                                             
## 580   ¦   ¦--Export Report To PDF                                         
## 581   ¦   ¦--Find Identical                                               
## 582   ¦   ¦--Merge                                                        
## 583   ¦   ¦--Rename                                                       
## 584   ¦   ¦--Sort2                                                        
## 585   ¦   °--Transfer Files                                               
## 586   ¦--Geodatabase Administration                                       
## 587   ¦   ¦--Analyze Datasets                                             
## 588   ¦   ¦--Change Privileges                                            
## 589   ¦   ¦--Compress                                                     
## 590   ¦   ¦--Configure Geodatabase Log File Tables                        
## 591   ¦   ¦--Create Database Sequence                                     
## 592   ¦   ¦--Create Database User                                         
## 593   ¦   ¦--Create Enterprise Geodatabase                                
## 594   ¦   ¦--Create Role                                                  
## 595   ¦   ¦--Delete Database Sequence                                     
## 596   ¦   ¦--Delete Schema Geodatabase                                    
## 597   ¦   ¦--Diagnose Version Metadata                                    
## 598   ¦   ¦--Diagnose Version Tables                                      
## 599   ¦   ¦--Enable Enterprise Geodatabase                                
## 600   ¦   ¦--Export Geodatabase Configuration Keywords                    
## 601   ¦   ¦--Import Geodatabase Configuration Keywords                    
## 602   ¦   ¦--Migrate Storage                                              
## 603   ¦   ¦--Rebuild Indexes                                              
## 604   ¦   ¦--Register With Geodatabase                                    
## 605   ¦   ¦--Repair Version Metadata                                      
## 606   ¦   ¦--Repair Version Tables                                        
## 607   ¦   ¦--Update Enterprise Geodatabase License                        
## 608   ¦   ¦--Update Portal Dataset Owner                                  
## 609   ¦   ¦--Upgrade Dataset                                              
## 610   ¦   °--Upgrade Geodatabase                                          
## 611   ¦--Indexes                                                          
## 612   ¦   ¦--Add Attribute Index                                          
## 613   ¦   ¦--Add Spatial Index                                            
## 614   ¦   ¦--Remove Attribute Index                                       
## 615   ¦   °--Remove Spatial Index                                         
## 616   ¦--Joins and Relates                                                
## 617   ¦   ¦--Add Join                                                     
## 618   ¦   ¦--Add Relate                                                   
## 619   ¦   ¦--Join Field                                                   
## 620   ¦   ¦--Remove Join                                                  
## 621   ¦   ¦--Remove Relate                                                
## 622   ¦   °--Validate Join                                                
## 623   ¦--Layers and Table Views                                           
## 624   ¦   ¦--Apply Symbology From Layer                                   
## 625   ¦   ¦--Make Building Layer                                          
## 626   ¦   ¦--Make Feature Layer                                           
## 627   ¦   ¦--Make Image Server Layer                                      
## 628   ¦   ¦--Make LAS Dataset Layer                                       
## 629   ¦   ¦--Make Mosaic Layer                                            
## 630   ¦   ¦--Make Query Layer                                             
## 631   ¦   ¦--Make Query Table                                             
## 632   ¦   ¦--Make Raster Layer                                            
## 633   ¦   ¦--Make Scene Layer                                             
## 634   ¦   ¦--Make Table View                                              
## 635   ¦   ¦--Make TIN Layer                                               
## 636   ¦   ¦--Make WCS Layer                                               
## 637   ¦   ¦--Make XY Event Layer                                          
## 638   ¦   ¦--Match Layer Symbology To A Style                             
## 639   ¦   ¦--Save To Layer File                                           
## 640   ¦   ¦--Select Layer By Attribute                                    
## 641   ¦   °--Select Layer By Location                                     
## 642   ¦--Package                                                          
## 643   ¦   ¦--Consolidate Layer                                            
## 644   ¦   ¦--Consolidate Locator                                          
## 645   ¦   ¦--Consolidate Map                                              
## 646   ¦   ¦--Consolidate Project                                          
## 647   ¦   ¦--Consolidate Toolbox                                          
## 648   ¦   ¦--Create Map Tile Package                                      
## 649   ¦   ¦--Create Mobile Map Package                                    
## 650   ¦   ¦--Create Mobile Scene Package                                  
## 651   ¦   ¦--Create Vector Tile Index                                     
## 652   ¦   ¦--Create Vector Tile Package                                   
## 653   ¦   ¦--Extract Package                                              
## 654   ¦   ¦--Package Layer                                                
## 655   ¦   ¦--Package Locator                                              
## 656   ¦   ¦--Package Map                                                  
## 657   ¦   ¦--Package Project                                              
## 658   ¦   ¦--Package Result                                               
## 659   ¦   ¦--Share Package                                                
## 660   ¦   ¦--Create 3D Object Scene Layer Package                         
## 661   ¦   ¦--Create Building Scene Layer Package                          
## 662   ¦   ¦--Create Integrated Mesh Scene Layer Package                   
## 663   ¦   ¦--Create Point Cloud Scene Layer Package                       
## 664   ¦   ¦--Create Point Scene Layer Package                             
## 665   ¦   °--Validate Scene Layer Package                                 
## 666   ¦--Photos                                                           
## 667   ¦   ¦--GeoTagged Photos To Points                                   
## 668   ¦   °--Match Photos To Rows By Time                                 
## 669   ¦--Projections and Transformations                                  
## 670   ¦   ¦--Batch Project                                                
## 671   ¦   ¦--Convert Coordinate Notation                                  
## 672   ¦   ¦--Create Custom Geographic Transformation                      
## 673   ¦   ¦--Create Spatial Reference                                     
## 674   ¦   ¦--Define Projection                                            
## 675   ¦   ¦--Project                                                      
## 676   ¦   ¦--Flip                                                         
## 677   ¦   ¦--Mirror                                                       
## 678   ¦   ¦--Project Raster                                               
## 679   ¦   ¦--Register Raster                                              
## 680   ¦   ¦--Rescale                                                      
## 681   ¦   ¦--Rotate                                                       
## 682   ¦   ¦--Shift                                                        
## 683   ¦   ¦--Warp                                                         
## 684   ¦   °--Warp From File                                               
## 685   ¦--Relationship Classes                                             
## 686   ¦   ¦--Add Rule To Relationship Class                               
## 687   ¦   ¦--Create Relationship Class                                    
## 688   ¦   ¦--Migrate Relationship Class                                   
## 689   ¦   ¦--Remove Rule From Relationship Class                          
## 690   ¦   ¦--Set Relationship Class Split Policy                          
## 691   ¦   °--Table To Relationship Class                                  
## 692   ¦--Sampling                                                         
## 693   ¦   ¦--Create Fishnet                                               
## 694   ¦   ¦--Create Random Points                                         
## 695   ¦   ¦--Generate Points Along Lines                                  
## 696   ¦   ¦--Generate Rectangles Along Lines                              
## 697   ¦   ¦--Generate Tessellation                                        
## 698   ¦   °--Generate Transects Along Lines                               
## 699   ¦--Subtypes                                                         
## 700   ¦   ¦--Add Subtype                                                  
## 701   ¦   ¦--Remove Subtype                                               
## 702   ¦   ¦--Set Default Subtype                                          
## 703   ¦   °--Set Subtype Field                                            
## 704   ¦--Table                                                            
## 705   ¦   ¦--Analyze                                                      
## 706   ¦   ¦--Copy Rows                                                    
## 707   ¦   ¦--Create Table                                                 
## 708   ¦   ¦--Create Unregistered Table                                    
## 709   ¦   ¦--Delete Rows                                                  
## 710   ¦   ¦--Get Count                                                    
## 711   ¦   ¦--Pivot Table                                                  
## 712   ¦   °--Truncate Table                                               
## 713   ¦--Tile Cache                                                       
## 714   ¦   ¦--Export Tile Cache                                            
## 715   ¦   ¦--Generate Tile Cache Tiling Scheme                            
## 716   ¦   ¦--Import Tile Cache                                            
## 717   ¦   °--Manage Tile Cache                                            
## 718   ¦--Topology                                                         
## 719   ¦   ¦--Add Feature Class To Topology                                
## 720   ¦   ¦--Add Rule To Topology                                         
## 721   ¦   ¦--Create Topology                                              
## 722   ¦   ¦--Export Topology Errors                                       
## 723   ¦   ¦--Remove Feature Class From Topology                           
## 724   ¦   ¦--Remove Rule From Topology                                    
## 725   ¦   ¦--Set Cluster Tolerance                                        
## 726   ¦   °--Validate Topology                                            
## 727   ¦--Versions                                                         
## 728   ¦   ¦--Add Field Conflict Filter                                    
## 729   ¦   ¦--Alter Version                                                
## 730   ¦   ¦--Change Version                                               
## 731   ¦   ¦--Create Version                                               
## 732   ¦   ¦--Delete Version                                               
## 733   ¦   ¦--Reconcile Versions                                           
## 734   ¦   ¦--Register As Versioned                                        
## 735   ¦   ¦--Remove Field Conflict Filter                                 
## 736   ¦   °--Unregister As Versioned                                      
## 737   ¦--Workspace                                                        
## 738   ¦   ¦--Clear Workspace Cache                                        
## 739   ¦   ¦--Create Cloud Storage Connection File                         
## 740   ¦   ¦--Create Database Connection                                   
## 741   ¦   ¦--Create Database Connection String                            
## 742   ¦   ¦--Create Feature Dataset                                       
## 743   ¦   ¦--Create File Geodatabase                                      
## 744   ¦   ¦--Create Folder                                                
## 745   ¦   ¦--Create Mobile Geodatabase                                    
## 746   ¦   ¦--Create Spatial Type                                          
## 747   ¦   ¦--Create SQLite Database                                       
## 748   ¦   ¦--Export XML Workspace Document                                
## 749   ¦   ¦--Import XML Workspace Document                                
## 750   ¦   °--Update Geodatabase Connection Properties To Branch           
## 751   ¦--Data Validation                                                  
## 752   ¦   °--NA                                                           
## 753   ¦--Result Management                                                
## 754   ¦   °--NA                                                           
## 755   ¦--Analyze Patterns\r\n\r\n                                         
## 756   ¦   ¦--Calculate Density                                            
## 757   ¦   ¦--Find Hot Spots                                               
## 758   ¦   ¦--Find Point Clusters                                          
## 759   ¦   ¦--Forest-based Classification and Regression                   
## 760   ¦   °--Generalized Linear Regression                                
## 761   ¦--Data Enrichment                                                  
## 762   ¦   °--Calculate Motion Statistics                                  
## 763   ¦--Find Locations                                                   
## 764   ¦   ¦--Detect Incidents                                             
## 765   ¦   ¦--Find Dwell Locations                                         
## 766   ¦   °--Find Similar Locations                                       
## 767   ¦--Manage Data                                                      
## 768   ¦   ¦--Calculate Field                                              
## 769   ¦   ¦--Clip Layer                                                   
## 770   ¦   ¦--Dissolve Boundaries                                          
## 771   ¦   ¦--Overlay Layers                                               
## 772   ¦   ¦--Append Data                                                  
## 773   ¦   ¦--Copy To Data Store                                           
## 774   ¦   ¦--Merge Layers                                                 
## 775   ¦   ¦--Convert Feature to Raster                                    
## 776   ¦   °--Convert Raster to Feature                                    
## 777   ¦--Summarize Data                                                   
## 778   ¦   ¦--Aggregate Points                                             
## 779   ¦   ¦--Describe Dataset                                             
## 780   ¦   ¦--Join Features                                                
## 781   ¦   ¦--Reconstruct Tracks                                           
## 782   ¦   ¦--Summarize Attributes                                         
## 783   ¦   ¦--Summarize Center And Dispersion                              
## 784   ¦   ¦--Summarize Within                                             
## 785   ¦   ¦--Summarize Raster Within                                      
## 786   ¦   °--Zonal Statistics As Table                                    
## 787   ¦--Use Proximity                                                    
## 788   ¦   ¦--Create Buffers                                               
## 789   ¦   ¦--Trace Proximity Events                                       
## 790   ¦   ¦--Distance Accumulation                                        
## 791   ¦   ¦--Distance Allocation                                          
## 792   ¦   ¦--Optimal Path As Line                                         
## 793   ¦   ¦--Optimal Path As Raster                                       
## 794   ¦   °--Optimal Region Connections                                   
## 795   ¦--Utilities                                                        
## 796   ¦   ¦--NA                                                           
## 797   ¦   ¦--Cross Validation                                             
## 798   ¦   ¦--Generate Subset Polygons                                     
## 799   ¦   ¦--Neighborhood Selection                                       
## 800   ¦   ¦--Semivariogram Sensitivity                                    
## 801   ¦   ¦--Subset Features                                              
## 802   ¦   ¦--Calculate Distance Band from Neighbor Count                  
## 803   ¦   ¦--Collect Events                                               
## 804   ¦   ¦--Convert Spatial Weights Matrix To Table                      
## 805   ¦   ¦--Dimension Reduction                                          
## 806   ¦   °--Export Feature Attributes To ASCII                           
## 807   ¦--Analyze Patterns                                                 
## 808   ¦   ¦--Calculate Density                                            
## 809   ¦   ¦--Create Space Time Cube                                       
## 810   ¦   ¦--Find Hot Spots                                               
## 811   ¦   ¦--Find Point Clusters                                          
## 812   ¦   ¦--Forest-based Classification and Regression                   
## 813   ¦   ¦--Generalized Linear Regression                                
## 814   ¦   ¦--Geographically Weighted Regression                           
## 815   ¦   °--Interpolate Points                                           
## 816   ¦--Interpolation                                                    
## 817   ¦   ¦--Diffusion Interpolation With Barriers                        
## 818   ¦   ¦--EBK Regression Prediction                                    
## 819   ¦   ¦--Empirical Bayesian Kriging                                   
## 820   ¦   ¦--Empirical Bayesian Kriging 3D                                
## 821   ¦   ¦--Global Polynomial Interpolation                              
## 822   ¦   ¦--IDW                                                          
## 823   ¦   ¦--Kernel Interpolation With Barriers                           
## 824   ¦   ¦--Local Polynomial Interpolation                               
## 825   ¦   ¦--Moving Window Kriging                                        
## 826   ¦   ¦--Radial Basis Functions                                       
## 827   ¦   ¦--Kriging                                                      
## 828   ¦   ¦--Natural Neighbor                                             
## 829   ¦   ¦--Spline                                                       
## 830   ¦   ¦--Spline with Barriers                                         
## 831   ¦   ¦--Topo to Raster                                               
## 832   ¦   ¦--Topo to Raster by File                                       
## 833   ¦   °--Trend                                                        
## 834   ¦--Sampling Network Design                                          
## 835   ¦   ¦--Create Spatially Balanced Points                             
## 836   ¦   °--Densify Sampling Network                                     
## 837   ¦--Simulation                                                       
## 838   ¦   ¦--Extract Values To Table                                      
## 839   ¦   °--Gaussian Geostatistical Simulations                          
## 840   ¦--Working with Geostatistical Layers                               
## 841   ¦   ¦--Areal Interpolation Layer To Polygons                        
## 842   ¦   ¦--Calculate Z Value                                            
## 843   ¦   ¦--Create Geostatistical Layer                                  
## 844   ¦   ¦--GA Layer 3D To Multidimensional Raster                       
## 845   ¦   ¦--GA Layer 3D To NetCDF                                        
## 846   ¦   ¦--GA Layer To Contour                                          
## 847   ¦   ¦--GA Layer To Grid                                             
## 848   ¦   ¦--GA Layer To Points                                           
## 849   ¦   ¦--GA Layer To Rasters                                          
## 850   ¦   ¦--Get Model Parameter                                          
## 851   ¦   °--Set Model Parameter                                          
## 852   ¦--Change Detection                                                 
## 853   ¦   °--Compute Change Raster                                        
## 854   ¦--Deep Learning                                                    
## 855   ¦   ¦--Classify Objects Using Deep Learning                         
## 856   ¦   ¦--Classify Pixels Using Deep Learning                          
## 857   ¦   ¦--Compute Accuracy For Object Detection                        
## 858   ¦   ¦--Detect Objects Using Deep Learning                           
## 859   ¦   ¦--Export Training Data For Deep Learning                       
## 860   ¦   ¦--Non Maximum Suppression                                      
## 861   ¦   °--Train Deep Learning Model                                    
## 862   ¦--Extraction                                                       
## 863   ¦   ¦--Sample                                                       
## 864   ¦   ¦--Extract by Attributes                                        
## 865   ¦   ¦--Extract by Circle                                            
## 866   ¦   ¦--Extract by Mask                                              
## 867   ¦   ¦--Extract by Points                                            
## 868   ¦   ¦--Extract by Polygon                                           
## 869   ¦   ¦--Extract by Rectangle                                         
## 870   ¦   ¦--Extract Multi Values to Points                               
## 871   ¦   °--Extract Values to Points                                     
## 872   ¦--Map Algebra                                                      
## 873   ¦   °--Raster Calculator                                            
## 874   ¦--Math                                                             
## 875   ¦   ¦--General Math toolset                                         
## 876   ¦   ¦--Conditional Math toolset                                     
## 877   ¦   ¦--Logical Math toolset                                         
## 878   ¦   ¦--Trigonometric Math toolset                                   
## 879   ¦   ¦--Abs                                                          
## 880   ¦   ¦--Divide                                                       
## 881   ¦   ¦--Exp                                                          
## 882   ¦   ¦--Exp10                                                        
## 883   ¦   ¦--Exp2                                                         
## 884   ¦   ¦--Float                                                        
## 885   ¦   ¦--Int                                                          
## 886   ¦   ¦--Ln                                                           
## 887   ¦   ¦--Log10                                                        
## 888   ¦   ¦--Log2                                                         
## 889   ¦   ¦--Minus                                                        
## 890   ¦   ¦--Mod                                                          
## 891   ¦   ¦--Negate                                                       
## 892   ¦   ¦--Plus                                                         
## 893   ¦   ¦--Power                                                        
## 894   ¦   ¦--Round Down                                                   
## 895   ¦   ¦--Round Up                                                     
## 896   ¦   ¦--Square                                                       
## 897   ¦   ¦--Square Root                                                  
## 898   ¦   °--Times                                                        
## 899   ¦--Motion Imagery                                                   
## 900   ¦   ¦--Extract Video Frames To Images                               
## 901   ¦   ¦--Video Metadata To Feature Class                              
## 902   ¦   °--Video Multiplexer                                            
## 903   ¦--Multidimensional Analysis                                        
## 904   ¦   ¦--Aggregate Multidimensional Raster                            
## 905   ¦   ¦--Analyze Changes Using CCDC                                   
## 906   ¦   ¦--Analyze Changes Using LandTrendr                             
## 907   ¦   ¦--Detect Change Using Change Analysis Raster                   
## 908   ¦   ¦--Find Argument Statistics                                     
## 909   ¦   ¦--Generate Multidimensional Anomaly                            
## 910   ¦   ¦--Generate Trend Raster                                        
## 911   ¦   ¦--Predict Using Trend Raster                                   
## 912   ¦   °--Summarize Categorical Raster                                 
## 913   ¦--Segmentation and Classification                                  
## 914   ¦   ¦--Classify Raster                                              
## 915   ¦   ¦--Compute Confusion Matrix                                     
## 916   ¦   ¦--Compute Segment Attributes                                   
## 917   ¦   ¦--Create Accuracy Assessment Points                            
## 918   ¦   ¦--Generate Training Samples From Seed Points                   
## 919   ¦   ¦--Inspect Training Samples                                     
## 920   ¦   ¦--Linear Spectral Unmixing                                     
## 921   ¦   ¦--Remove Raster Segment Tiling Artifacts                       
## 922   ¦   ¦--Segment Mean Shift                                           
## 923   ¦   ¦--Train Iso Cluster Classifier                                 
## 924   ¦   ¦--Train Maximum Likelihood Classifier                          
## 925   ¦   ¦--Train Random Trees Classifier                                
## 926   ¦   ¦--Train Support Vector Machine Classifier                      
## 927   ¦   ¦--Update Accuracy Assessment Points                            
## 928   ¦   °--Export Training Data For Deep Learning                       
## 929   ¦--Statistical                                                      
## 930   ¦   ¦--Cell Statistics                                              
## 931   ¦   ¦--Focal Statistics                                             
## 932   ¦   ¦--Zonal Statistics                                             
## 933   ¦   °--Zonal Statistics as Table                                    
## 934   ¦--Conversion                                                       
## 935   ¦   ¦--Batch Import Data                                            
## 936   ¦   °--Points to Track Segments                                     
## 937   ¦--Movement                                                         
## 938   ¦   ¦--Classify Movement Events                                     
## 939   ¦   ¦--Compare Areas                                                
## 940   ¦   ¦--Find Cotravelers                                             
## 941   ¦   °--Find Meeting Locations                                       
## 942   ¦--Overlay Events                                                   
## 943   ¦   °--NA                                                           
## 944   ¦--Update Measures From LRS                                         
## 945   ¦   °--NA                                                           
## 946   ¦--Network Dataset                                                  
## 947   ¦   ¦--Build Network                                                
## 948   ¦   ¦--Create Network Dataset                                       
## 949   ¦   ¦--Create Network Dataset From Template                         
## 950   ¦   ¦--Create Template From Network Dataset                         
## 951   ¦   ¦--Dissolve Network                                             
## 952   ¦   °--Make Network Dataset   Layer                                 
## 953   ¦--Turn Feature Class                                               
## 954   ¦   ¦--Create Turn Feature Class                                    
## 955   ¦   ¦--Increase Maximum Edges                                       
## 956   ¦   ¦--Populate Alternate ID Fields                                 
## 957   ¦   ¦--Turn Table To Turn Feature Class                             
## 958   ¦   ¦--Update By Alternate ID Fields                                
## 959   ¦   °--Update By Geometry                                           
## 960   ¦--Analyze Terrain                                                  
## 961   ¦   °--Create Viewshed                                              
## 962   ¦--Generalize                                                       
## 963   ¦   °--Nibble                                                       
## 964   ¦--Hydrology                                                        
## 965   ¦   ¦--Fill                                                         
## 966   ¦   ¦--Flow Accumulation                                            
## 967   ¦   ¦--Flow Direction                                               
## 968   ¦   ¦--Flow Distance                                                
## 969   ¦   ¦--Stream Link                                                  
## 970   ¦   ¦--Watershed                                                    
## 971   ¦   ¦--Trace Downstream                                             
## 972   ¦   ¦--Basin                                                        
## 973   ¦   ¦--Flow Length                                                  
## 974   ¦   ¦--Sink                                                         
## 975   ¦   ¦--Snap Pour Point                                              
## 976   ¦   ¦--Storage Capacity                                             
## 977   ¦   ¦--Stream Order                                                 
## 978   ¦   °--Stream to Feature                                            
## 979   ¦--Use Proximity (Legacy)                                           
## 980   ¦   ¦--Calculate Distance                                           
## 981   ¦   ¦--Calculate Travel Cost                                        
## 982   ¦   ¦--Cost Path As Polyline                                        
## 983   ¦   ¦--Determine Optimum Travel Cost Network                        
## 984   ¦   ¦--Determine Travel Cost Path As Polyline                       
## 985   ¦   °--Determine Travel Cost Paths To Destinations                  
## 986   ¦--Elevation                                                        
## 987   ¦   ¦--Profile                                                      
## 988   ¦   ¦--Summarize Elevation                                          
## 989   ¦   °--Viewshed                                                     
## 990   ¦--Network Analysis                                                 
## 991   ¦   ¦--Find Closest Facilities                                      
## 992   ¦   ¦--Find Routes                                                  
## 993   ¦   ¦--Generate Origin Destination Cost Matrix                      
## 994   ¦   ¦--Generate Service Areas                                       
## 995   ¦   ¦--Solve Location Allocation                                    
## 996   ¦   °--Solve Vehicle Routing Problem                                
## 997   ¦--Caching                                                          
## 998   ¦   ¦--Create Map Server Cache                                      
## 999   ¦   ¦--Delete Map Server Cache                                      
## 1000  ¦   ¦--Export Map Server Cache                                      
##  [ reached 'max' / getOption("max.print") -- omitted 225 rows ]
```



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

If you want to highlight something important, you can add [a custom block](https://bookdown.org/yihui/bookdown/custom-blocks.html) in this format: ````{block2, type = "rmdnote"}` (see example below). This block will recieve the class "rmdnote", which is specified in [css/style.css]. Currently, the classes `rmdcaution, .rmdimportant, .rmdnote, .rmdtip, .rmdwarning` have the same layout, they all come from "Geocomputation with R" and might be specified on demand.

````markdown
```{block2, type='rmdnote'}
Some 
```
````



    
    
## Dependencies

To capture the various dependencies on r-Packages, we follow the following logic (see also https://github.com/arc2r/book/issues/9): 



| Priority 	| Dependency (Package Necessary to:)            	| File        	| Repo        	| Field    	| Eg.                 	|
|----------	|-----------------------------------------------	|-------------	|-------------	|----------	|---------------------	|
| 1        	| Use the **data-package**                      	| DESCRIPTION 	| arc2r/arc2r 	| Imports  	| `sf`, `raster`          	|
| 2        	| To run the code described within **the book** 	| DESCRIPTION 	| arc2r/arc2r 	| Suggests 	| `gstat`, `tmap`, `dplyr`  	|
| 3        	| Render **the book**                           	| DESCRIPTION 	| arc2r/book  	| Imports  	| `bookdown`, `rmarkdown` 	|
