## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,warning=F,message=F)

## ----eval=F--------------------------------------------------------------
## getwd()

## ----eval=F--------------------------------------------------------------
## main.path <- "C:/" # Beispiel für Windows
## main.path <- "/users/Name/" # Beispiel für Mac
## main.path <- "/home/user/" # Beispiel für Linux

## ----eval=F--------------------------------------------------------------
## setwd(main.path)

## ----eval=F--------------------------------------------------------------
## install.packages("readr")

## ------------------------------------------------------------------------
library(readr)

## ----eval=F--------------------------------------------------------------
## library(readr)
## rows <- read_csv("https://data.montgomerycountymd.gov/api/views/6rqk-pdub/rows.csv?accessType=DOWNLOAD")

## ------------------------------------------------------------------------
url <- "https://raw.githubusercontent.com/Japhilko/
GeoData/master/2015/data/whcSites.csv"

whcSites <- read.csv(url) 

## ------------------------------------------------------------------------
head(data.frame(whcSites$name_en,whcSites$category))

## ----eval=F--------------------------------------------------------------
## install.packages("haven")

## ------------------------------------------------------------------------
library(haven)

## ----eval=F--------------------------------------------------------------
## install.packages("haven")

## ----eval=F--------------------------------------------------------------
## library(haven)
## mtcars <- read_sav("https://github.com/Japhilko/RInterfaces/raw/master/data/mtcars.sav")

## ----eval=F--------------------------------------------------------------
## library(haven)
## oecd <- read_dta("https://github.com/Japhilko/IntroR/raw/master/2017/data/oecd.dta")

