## ---- include=FALSE------------------------------------------------------
pdfP <- F
knitr::opts_chunk$set(echo = TRUE,warning=F,message = F)

## ----eval=F--------------------------------------------------------------
## install.packages('DT')

## ------------------------------------------------------------------------
library('DT')

## ------------------------------------------------------------------------
exdat <- read.csv("data/exdat.csv")

## ----eval=pdfP-----------------------------------------------------------
datatable(exdat)

## ----eval=pdfP-----------------------------------------------------------
datatable(head(exdat, 20), options = list(
  columnDefs = list(list(className = 'dt-center', targets = 5)),
  pageLength = 5,
  lengthMenu = c(5, 10, 15, 20)
))

## ----eval=pdfP-----------------------------------------------------------
datatable(exdat, options = list(searchHighlight = TRUE), filter = 'top')

