library(rvest)
library(xml2)

# This is an EXTREMLY untidy script to scrape all tool-names with their 
# respective toolset and toolbox from the ESRI website. 


myurl <- "https://pro.arcgis.com/en/pro-app/latest/tool-reference/data-management/an-overview-of-the-data-management-toolbox.htm"

myurl2 <- "https://pro.arcgis.com/en/pro-app/latest/tool-reference/3d-analyst/an-overview-of-the-3d-analyst-toolbox.htm"




"https://pro.arcgis.com/en/pro-app/latest/tool-reference/introduction-anatomy/anatomy-of-a-tool-reference-page.htm" %>%
  xml2::read_html() %>%
  html_nodes(".icon-ui-right")


toolboxes <- read_html("toolboxes.html") %>%
  html_nodes("a") %>%
  map_dfr(function(x){
    tibble(name  = html_text(x),
           url = html_attr(x, "href"))
  })

toolboxes %>%
  head(1) %>%
  pmap(function(name, url){
    
    url = url %>%
      paste0("https://pro.arcgis.com",.) %>%
      rvest::follow_link()
    
    
    
    
    df <- xml2::read_html(url) %>%
      html_node(".tablexyz") %>%
      html_table()
    
    mutate(df, toolbox = name)
  })

getlast <- function(inp){
  st <- str_split(inp,"/")[[1]]
  st[length(st)]
}


mytable <- function(url){
  tab <- url %>%
    paste0(., "/an-overview-of-the-", getlast(.),"-toolbox.htm") %>%
    str_replace("/2.7/","/latest/") %>%
    paste0("https://pro.arcgis.com",.) %>%
    xml2::read_html() %>%
    html_node(".tablexyz") 
  tab %>%
    html_nodes("tr") %>%
    map_dfr(function(x){
      rows <- html_nodes(x, "td")
      urla <- rows %>%
        html_node("a")
      href <- urla %>%
        html_attr("href")
      
      tex <- urla %>%
        html_text()
      
      desc <- rows %>%
        html_text()
      
      tibble(href = href[1], tool = tex[1], desc = desc)
    })  
}

sc <- toolboxes %>%
  # head(2) %>%
  pmap_dfr(function(name, url){
    
    myt <- tryCatch(
      mytable(url),
      error = function(e){
        tibble(href = NA, tool = NA, desc = NA)
      }
    )
    myt <- myt %>%
      mutate(toolb = name)
    
    Sys.sleep(0.5)
    myt
  })


sc2 <- sc %>%
  filter(tool != desc)


gettool <- function(inp){
  inp %>%
    str_replace("/2.7/","/latest/") %>%
    paste0("https://pro.arcgis.com",.)%>%
    read_html() %>%
    html_nodes(".tablexyz") %>%
    html_table()
}


gettool("/en/pro-app/2.7/tool-reference/3d-analyst/an-overview-of-the-3d-features-toolset.htm")

sc3 <- sc2 %>%
  # head(1) %>%
  pmap_dfr(function(href, tool, desc, toolb){
    Sys.sleep(0.5)
    tab <- tryCatch(gettool(href),
                    error = tibble(Tool = NA, Description = NA))
    tab
    
    map_dfr(tab, ~.x) %>%
      mutate(href = href, toolset = tool, desc = desc, toolb)
  })



sc4 <- sc3[,1:6]

write_csv(sc4, "ESRI_Tool_names.csv")
write_csv(sc2, "ESRI_Toolsets.csv")
write_csv(toolboxes, "ESRI_Toolboxes.csv")
