## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = T)

## ----eval=F--------------------------------------------------------------
## install.packages("nycflights13")

## ------------------------------------------------------------------------
library(nycflights13)
dim(flights)
head(flights)

## ------------------------------------------------------------------------
library(dplyr)
head(filter(flights, month == 1,day==1))

## ----eval=F--------------------------------------------------------------
## install.packages("downloader")

## ------------------------------------------------------------------------
library(downloader)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- "msleep_ggplot2.csv"
if (!file.exists(filename)) download(url,filename)
msleep <- read.csv("msleep_ggplot2.csv")
head(msleep)

## ------------------------------------------------------------------------
sleepData <- select(msleep, name, sleep_total)
head(sleepData)

