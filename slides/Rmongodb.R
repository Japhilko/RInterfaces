## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = FALSE,eval=F)

## ----eval=F--------------------------------------------------------------
## install.packages("RMySQL")

## ----eval=F--------------------------------------------------------------
## library(RMySQL)
## mydb = dbConnect(MySQL(), user='user', password='password', dbname='database_name', host='host')

## ----eval=F--------------------------------------------------------------
## library(DBI)
## con <- dbConnect(RMySQL::MySQL(), group = "my-db")

## ----eval=F--------------------------------------------------------------
## install.packages("mongolite")

## ----eval=F--------------------------------------------------------------
## library(mongolite)
## m <- mongo(collection = "diamonds")

## ----eval=F--------------------------------------------------------------
## install.packages("jsonlite")
## devtools::install_github("ropensci/sofa")

## ----eval=F--------------------------------------------------------------
## library("sofa")

