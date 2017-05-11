## ---- include=FALSE------------------------------------------------------
pdfP <- F
knitr::opts_chunk$set(echo = TRUE,message = F,warning=F)

## ----eval=F--------------------------------------------------------------
## install.packages("tidyverse")

## ------------------------------------------------------------------------
library(tidyverse)

## ------------------------------------------------------------------------
library(stringr)

## ------------------------------------------------------------------------
library(forcats)
library(ggmap)
library(rvest)

## ----cache=T-------------------------------------------------------------
html.world_ports <- read_html("https://en.wikipedia.org/wiki/List_of_busiest_container_ports")
df.world_ports <- html_table(html_nodes(html.world_ports, "table")[[2]], fill = TRUE)

## ----eval=pdfP-----------------------------------------------------------
library(DT)
datatable(df.world_ports)

## ------------------------------------------------------------------------
glimpse(df.world_ports)

## ------------------------------------------------------------------------
library(rvest)
ht <- read_html('https://www.google.co.in/search?q=guitar+repair+workshop')
links <- ht %>% html_nodes(xpath='//h3/a') %>% html_attr('href')
gsub('/url\\?q=','',sapply(strsplit(links[as.vector(grep('url',links))],split='&'),'[',1))

