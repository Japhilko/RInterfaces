## ---- include=FALSE------------------------------------------------------
pdfP <- F
knitr::opts_chunk$set(echo = TRUE,message=F,warning=F)

## ----eval=F--------------------------------------------------------------
## install.packages("plotly")

## ------------------------------------------------------------------------
library("plotly")

## ----eval=pdfP-----------------------------------------------------------
plot_ly(midwest, x = ~percollege, color = ~state, type = "box")

## ------------------------------------------------------------------------
url <- "https://raw.githubusercontent.com/Japhilko/GeoData/master/2015/data/whcSites.csv"
whcSites <- read.csv(url) 

## ----eval=pdfP-----------------------------------------------------------
plot_ly(whcSites, x = ~date_inscribed, color = ~category_short, type = "box")

