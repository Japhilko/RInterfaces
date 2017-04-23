## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,eval=T)

## ------------------------------------------------------------------------
library("jsonlite")
DRINKWATER <- fromJSON("data/RomDrinkingWater.geojson")

## ------------------------------------------------------------------------
names(DRINKWATER)[1:3]
names(DRINKWATER)[4:5]

## ----eval=F--------------------------------------------------------------
## head(DRINKWATER$features)

## ----echo=F--------------------------------------------------------------
library(knitr)
head(DRINKWATER$features)

## ------------------------------------------------------------------------
my_repos <- fromJSON("https://api.github.com/users/japhilko/repos")

## ------------------------------------------------------------------------
names(my_repos)

## ------------------------------------------------------------------------
library(jsonlite)
res <- fromJSON('http://ergast.com/api/f1/2004/1/results.json')
drivers <- res$MRData$RaceTable$Races$Results[[1]]$Driver
colnames(drivers)

## ------------------------------------------------------------------------
article_key <- "&api-key=c2fede7bd9aea57c898f538e5ec0a1ee:6:68700045"
url <- "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=obamacare+socialism"
req <- fromJSON(paste0(url, article_key))
articles <- req$response$docs
colnames(articles)

## ------------------------------------------------------------------------
library(XML)
citation("XML")

## ----eval=F--------------------------------------------------------------
## url <- "http://api.openstreetmap.org/api/0.6/
## relation/62422"

## ----echo=F--------------------------------------------------------------
url <- "http://api.openstreetmap.org/api/0.6/relation/62422"

## ------------------------------------------------------------------------
library(xml2)
BE <- xmlParse(url)

## ------------------------------------------------------------------------
xmltop = xmlRoot(BE)
class(xmltop)
xmlSize(xmltop)
xmlSize(xmltop[[1]])

## ------------------------------------------------------------------------
xpathApply(BE,"//tag[@k = 'source:population']")

## ----parseNode-----------------------------------------------------------
url2 <- "http://api.openstreetmap.org/api/0.6/node/2923760808"
RennesBa <- xmlParse(url2)

## ----MadCalle------------------------------------------------------------
url3 <- "http://api.openstreetmap.org/api/0.6/way/72799743"
MadCalle <- xmlParse(url3)

## ------------------------------------------------------------------------
citation("XML")

