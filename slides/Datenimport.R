## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ----eval=F--------------------------------------------------------------
## getwd()

## ----eval=F--------------------------------------------------------------
## main.path <- "C:/" # Beispiel für Windows
## main.path <- "/users/Name/" # Beispiel für Mac
## main.path <- "/home/user/" # Beispiel für Linux

## ----eval=F--------------------------------------------------------------
## setwd(main.path)

## ----eval=F--------------------------------------------------------------
## library(foreign)
## ?read.csv
## ?read.csv2

## ----eval=F--------------------------------------------------------------
## Dat <- read.csv("schuldaten_export.csv")

## ----eval=F--------------------------------------------------------------
## Dat <- read.csv2("schuldaten_export.csv")

## ------------------------------------------------------------------------
url <- "https://raw.githubusercontent.com/Japhilko/
GeoData/master/2015/data/whcSites.csv"

whcSites <- read.csv(url) 

## ----eval=F--------------------------------------------------------------
## link<- "http://www.statistik.at/web_de/static/
## mz_2013_sds_-_datensatz_080469.sav"
## 
## ?read.spss
## Dat <- read.spss(link,to.data.frame=T)

## ----eval=F--------------------------------------------------------------
## MZ02 <- read.dta("MZ02.dta")

