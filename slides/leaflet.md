# Interaktive Karten mit leaflet
Jan-Philipp Kolb  
27 Januar 2017  



## Die Daten - Weltkulturerbe


```r
url <- "https://raw.githubusercontent.com/Japhilko/
GeoData/master/2015/data/whcSites.csv"

whcSites <- read.csv(url) 
```

## Notwendige Pakete

[magrittr](https://cran.r-project.org/web/packages/magrittr/index.html) - für den Pipe Operator in R:


```r
library("magrittr")
```


[leaflet](https://rstudio.github.io/leaflet/) - um  interaktive Karten mit der JavaScript Bibliothek 'Leaflet' zu erzeugen


```r
library("leaflet")
```


## Eine interaktive Karte erstellen


```r
m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=whcSites$lon, 
             lat=whcSites$lat, 
             popup=whcSites$name_en)
m
```

## Die Karte zeigen

![pic](https://github.com/Japhilko/GeoData/tree/master/data/figure/WHCPopUps.PNG) 

## Farbe hinzu


```r
whcSites$color <- "red"
whcSites$color[whcSites$category=="Cultural"] <- "blue"
whcSites$color[whcSites$category=="Mixed"] <- "orange"
```

## Eine Karte mit Farbe erzeugen


```r
m1 <- leaflet() %>%
  addTiles() %>%  
  addCircles(lng=whcSites$lon, 
             lat=whcSites$lat, 
             popup=whcSites$name_en,
             color=whcSites$color)
```

## Die Karte zeigen

![pic](figure/WHCcircles.PNG) 

## [Die Karte abspeichern](http://www.r-bloggers.com/interactive-mapping-with-leaflet-in-r-2/)

![gui](http://i1.wp.com/spatialrecology.org/images/r_leaflet/snapshot2.png)

## [Layers ein- und ausblenden](https://rstudio.github.io/leaflet/showhide.html)


```r
leaflet() %>%
  addTiles() %>%
  addMarkers(data = coffee_shops, group = "Food & Drink") %>%
  addMarkers(data = restaurants, group = "Food & Drink") %>%
  addMarkers(data = restrooms, group = "Restrooms")
```


## Links und Quellen

- [4 Tricks zum Arbeiten mit Leaflet](https://www.r-bloggers.com/4-tricks-for-working-with-r-leaflet-and-shiny/)

- <http://www.r-bloggers.com/the-leaflet-package-for-online-mapping-in-r/>
- <https://rstudio.github.io/leaflet/>


