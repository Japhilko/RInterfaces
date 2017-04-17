## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,message=F,warnings=F)

## ----eval=F--------------------------------------------------------------
## library(xlsx)
## dat <- read.xlsx("cult_emp_sex.xls",1)

## ----eval=F--------------------------------------------------------------
## install.packages("XLConnect")

## ------------------------------------------------------------------------
library("XLConnect")

## ----eval=F--------------------------------------------------------------
## fileXls <- "data/newFile.xlsx"
## unlink(fileXls, recursive = FALSE, force = FALSE)
## exc <- loadWorkbook(fileXls, create = TRUE)
## createSheet(exc,'Input')
## saveWorkbook(exc)

## ----eval=F--------------------------------------------------------------
## input <- data.frame('inputType'=c('Day','Month'),'inputValue'=c(2,5))
## writeWorksheet(exc, input, sheet = "input", startRow = 1, startCol = 2)
## saveWorkbook(exc)

## ------------------------------------------------------------------------
myFunction <- function(){
 aa <- rnorm(200)
 bb <- rnorm(200)
 res <- lm(aa~bb)$res
 return(res)
}

## ----eval=F--------------------------------------------------------------
## install.packages("readxl")

## ------------------------------------------------------------------------
library(readxl)

