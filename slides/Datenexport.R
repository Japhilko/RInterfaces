## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ------------------------------------------------------------------------
A <- c(1,2,3,4)
B <- c("A","B","C","D")

mydata <- data.frame(A,B)

## ----eval=F--------------------------------------------------------------
## save(mydata, file="mydata.RData")

## ----eval=F--------------------------------------------------------------
## write.csv(mydata,file="mydata.csv")

## ----eval=F--------------------------------------------------------------
## library(xlsx)
## write.xlsx(mydata,file="mydata.xlsx")

## ------------------------------------------------------------------------
library(foreign)
write.dta(mydata,file="mydata.dta") 

## ----eval=F--------------------------------------------------------------
## install.packages("rio")

## ------------------------------------------------------------------------
library("rio")
# create file to convert
setwd("data/")

export(mtcars, "mtcars.sav")

## ------------------------------------------------------------------------
export(mtcars, "mtcars.dta")

# convert Stata to SPSS
convert("mtcars.dta", "mtcars.sav")

