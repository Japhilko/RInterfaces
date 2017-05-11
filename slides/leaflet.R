## ---- include=FALSE------------------------------------------------------
pdfP <- F
knitr::opts_chunk$set(echo = TRUE,warning=F,message=F)

## ------------------------------------------------------------------------
url <- "https://raw.githubusercontent.com/Japhilko/
GeoData/master/2015/data/whcSites.csv"

whcSites <- read.csv(url) 

## ------------------------------------------------------------------------
whcSitesDat <- with(whcSites,data.frame(name_en,
                                        category))

## ------------------------------------------------------------------------
library(knitr)
kable(head(whcSitesDat))

## ----eval=F--------------------------------------------------------------
## install.packages("DT")

## ------------------------------------------------------------------------
whcSitesDat2 <- with(whcSites,data.frame(name_en,category,
                                         longitude,latitude,date_inscribed,area_hectares,danger_list))

## ----eval=pdfP-----------------------------------------------------------
library('DT')
datatable(whcSitesDat2)

## ----eval=F--------------------------------------------------------------
## install.packages("magrittr")

## ----warning=F-----------------------------------------------------------
library("magrittr")

## ------------------------------------------------------------------------
library(magrittr)

str1 <- "Hallo Welt"
str1 %>% substr(1,5)

## ------------------------------------------------------------------------
str1 %>% substr(1,5) %>% toupper()

## ----eval=F--------------------------------------------------------------
## install.packages("leaflet")

## ----warning=F-----------------------------------------------------------
library("leaflet")

## ----eval=pdfP-----------------------------------------------------------
m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=whcSites$lon, 
             lat=whcSites$lat, 
             popup=whcSites$name_en)
m

## ------------------------------------------------------------------------
whcSites$color <- "red"
whcSites$color[whcSites$category=="Cultural"] <- "blue"
whcSites$color[whcSites$category=="Mixed"] <- "orange"

## ----eval=pdfP-----------------------------------------------------------
m1 <- leaflet() %>%
  addTiles() %>%  
  addCircles(lng=whcSites$lon, 
             lat=whcSites$lat, 
             popup=whcSites$name_en,
             color=whcSites$color)

## ----eval=pdfP-----------------------------------------------------------
m2 <- leaflet() %>%
  addTiles(group = "OSM (default)") %>%  
  addProviderTiles("Stamen.Toner", group = "Toner") %>%
  addProviderTiles("Stamen.TonerLite", group = "Toner Lite") %>%

  addCircles(lng=whcSites$lon, 
             lat=whcSites$lat, 
             popup=whcSites$name_en) %>% 
  
  addLayersControl(
    baseGroups = c("OSM (default)", "Toner", "Toner Lite"),
    options = layersControlOptions(collapsed = FALSE)
  )
m2

## ------------------------------------------------------------------------
outline <- quakes[chull(quakes$long, quakes$lat),]

## ----eval=pdfP-----------------------------------------------------------
map <- leaflet(quakes) %>%
  # Base groups
  addTiles(group = "OSM (default)") %>%
  addProviderTiles("Stamen.Toner", group = "Toner") %>%
  addProviderTiles("Stamen.TonerLite", group = "Toner Lite") %>%
  # Overlay groups
  addCircles(~long, ~lat, ~10^mag/5, stroke = F, group = "Quakes") %>%
  addPolygons(data = outline, lng = ~long, lat = ~lat,
    fill = F, weight = 2, color = "#FFFFCC", group = "Outline") %>%
  # Layers control
  addLayersControl(
    baseGroups = c("OSM (default)", "Toner", "Toner Lite"),
    overlayGroups = c("Quakes", "Outline"),
    options = layersControlOptions(collapsed = FALSE)
  )
map

## ------------------------------------------------------------------------
library(sp)
Sr1 = Polygon(cbind(c(2, 4, 4, 1, 2), c(2, 3, 5, 4, 2)))
Sr2 = Polygon(cbind(c(5, 4, 2, 5), c(2, 3, 2, 2)))
Sr3 = Polygon(cbind(c(4, 4, 5, 10, 4), c(5, 3, 2, 5, 5)))
Sr4 = Polygon(cbind(c(5, 6, 6, 5, 5), c(4, 4, 3, 3, 4)), hole = TRUE)
Srs1 = Polygons(list(Sr1), "s1")
Srs2 = Polygons(list(Sr2), "s2")
Srs3 = Polygons(list(Sr4, Sr3), "s3/4")
SpP = SpatialPolygons(list(Srs1, Srs2, Srs3), 1:3)

## ----eval=pdfP-----------------------------------------------------------
leaflet(height = "300px") %>% addPolygons(data = SpP)

## ----eval=pdfP-----------------------------------------------------------
library(maps)
mapStates = map("state", fill = TRUE, plot = FALSE)
leaflet(data = mapStates) %>% addTiles() %>%
  addPolygons(fillColor = topo.colors(10, alpha = NULL), stroke = FALSE)

## ----eval=pdfP-----------------------------------------------------------
m <- leaflet() %>% setView(lng = -71.0589, lat = 42.3601, zoom = 12)
m %>% addTiles()
m %>% addProviderTiles("Stamen.Toner")

## ----eval=pdfP-----------------------------------------------------------
m %>% addProviderTiles("CartoDB.Positron")

## ----eval=pdfP-----------------------------------------------------------
m %>% addProviderTiles("Esri.NatGeoWorldMap")

## ----eval=pdfP-----------------------------------------------------------
m %>% addProviderTiles("OpenTopoMap")

## ----eval=pdfP-----------------------------------------------------------
m %>% addProviderTiles("Thunderforest.OpenCycleMap")

## ----eval=pdfP-----------------------------------------------------------
leaflet() %>% addTiles() %>% setView(-93.65, 42.0285, zoom = 4) %>%
  addWMSTiles(
    "http://mesonet.agron.iastate.edu/cgi-bin/wms/nexrad/n0r.cgi",
    layers = "nexrad-n0r-900913",
    options = WMSTileOptions(format = "image/png", transparent = TRUE),
    attribution = "Weather data © 2012 IEM Nexrad"
  )

## ----eval=pdfP-----------------------------------------------------------
m %>% addProviderTiles("MtbMap") %>%
  addProviderTiles("Stamen.TonerLines",
    options = providerTileOptions(opacity = 0.35)) %>%
  addProviderTiles("Stamen.TonerLabels")

## ----eval=pdfP-----------------------------------------------------------
greenLeafIcon <- makeIcon(
  iconUrl = "http://leafletjs.com/examples/custom-icons/leaf-green.png",
  iconWidth = 38, iconHeight = 95,
  iconAnchorX = 22, iconAnchorY = 94,
  shadowUrl = "http://leafletjs.com/examples/custom-icons/leaf-shadow.png",
  shadowWidth = 50, shadowHeight = 64,
  shadowAnchorX = 4, shadowAnchorY = 62
)

leaflet(data = quakes[1:4,]) %>% addTiles() %>%
  addMarkers(~long, ~lat, icon = greenLeafIcon)

## ----eval=pdfP-----------------------------------------------------------
menIcon <- makeIcon("https://img.clipartfest.com/707b339dc88f57bbd5d88377891131e3_bean-people-clipart-cliparts-beach-screen-with-people-clipart_344-432.jpeg",
         iconWidth = 38, iconHeight = 95,
  iconAnchorX = 22, iconAnchorY = 94)

leaflet(data = quakes[1:4,]) %>% addTiles() %>%
  addMarkers(~long, ~lat, icon = menIcon)

## ----eval=pdfP-----------------------------------------------------------
leaflet(quakes) %>% addTiles() %>% addMarkers(
  clusterOptions = markerClusterOptions()
)

## ----eval=pdfP-----------------------------------------------------------
leaflet() %>% addTiles() %>%
  addRectangles(
    lng1=-118.456554, lat1=34.078039,
    lng2=-118.436383, lat2=34.062717,
    fillColor = "transparent"
  )

