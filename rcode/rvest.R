## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,warning=F,message=F)

## ----eval=F--------------------------------------------------------------
## install.packages("rvest")

## ------------------------------------------------------------------------
library(rvest)

## ------------------------------------------------------------------------
ht <- read_html('https://www.google.co.in/search?q=guitar+repair+workshop')
links <- ht %>% html_nodes(xpath='//h3/a') %>% html_attr('href')
gsub('/url\\?q=','',sapply(strsplit(links[as.vector(grep('url',links))],split='&'),'[',1))

## ------------------------------------------------------------------------
url4<-"http://api.openstreetmap.org/api/0.6/node/25439439"
obj4 <- xmlParse(url4)
xpathApply(obj4,"//tag[@k = 'railway:station_category']")[[1]]

## ------------------------------------------------------------------------
library(rvest)
bhfkat<-read_html(
  "https://de.wikipedia.org/wiki/Bahnhofskategorie")
df_html_bhfkat<-html_table(
  html_nodes(bhfkat, "table")[[1]],fill = TRUE)

## ----echo=F--------------------------------------------------------------
library(knitr)
kable(df_html_bhfkat)

