## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,eval=T)

## ------------------------------------------------------------------------
A <- c(1,2,3,4)
B <- c("A","B","C","D")

mydata <- data.frame(A,B)

## ----eval=F,echo=F-------------------------------------------------------
## library(knitr)
## kable(mydata)

## ----eval=F--------------------------------------------------------------
## save(mydata, file="mydata.RData")

## ----eval=F--------------------------------------------------------------
## write.csv(mydata,file="mydata.csv")

## ----eval=F--------------------------------------------------------------
## write.csv2(mydata,file="mydata.csv")

## ----eval=F--------------------------------------------------------------
## library(xlsx)
## write.xlsx(mydata,file="mydata.xlsx")

## ----eval=F--------------------------------------------------------------
## library(foreign)
## write.dta(mydata,file="data/mydata.dta")

## ----eval=F--------------------------------------------------------------
## install.packages("rio")

## ----eval=F--------------------------------------------------------------
## library("rio")
## # create file to convert
## 
## export(mtcars, "data/mtcars.sav")

## ----eval=F--------------------------------------------------------------
## export(mtcars, "data/mtcars.dta")
## 
## # convert Stata to SPSS
## convert("data/mtcars.dta", "data/mtcars.sav")

