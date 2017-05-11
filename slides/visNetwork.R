## ---- include=FALSE------------------------------------------------------
pdfP <- F
knitr::opts_chunk$set(echo = TRUE)

## ----eval=F--------------------------------------------------------------
## install.packages("visNetwork")

## ------------------------------------------------------------------------
library(visNetwork)

## ----eval=pdfP-----------------------------------------------------------
nodes <- data.frame(id = 1:3)
edges <- data.frame(from = c(1,2), to = c(1,3))
visNetwork(nodes, edges, width = "100%")

## ----eval=F--------------------------------------------------------------
## visDocumentation()
## vignette("Introduction-to-visNetwork") # with CRAN version

## ----eval=F--------------------------------------------------------------
## install.packages("shiny")

## ----eval=F--------------------------------------------------------------
## shiny::runApp(system.file("shiny", package = "visNetwork"))

