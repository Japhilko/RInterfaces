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

## ------------------------------------------------------------------------
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- "msleep_ggplot2.csv"

## ------------------------------------------------------------------------
setwd("data/")
if (!file.exists(filename)) download(url,filename)
msleep <- read.csv("msleep_ggplot2.csv")

## ------------------------------------------------------------------------
head(msleep)

## ------------------------------------------------------------------------
sleepData <- select(msleep, name, sleep_total)
head(sleepData)

## ------------------------------------------------------------------------
sleepData <- select(msleep, name, sleep_total)
head(sleepData)

## ------------------------------------------------------------------------
head(select(msleep, -name))

## ------------------------------------------------------------------------
head(select(msleep, starts_with("sl")))

## ------------------------------------------------------------------------
filter(msleep, sleep_total >= 16)

## ------------------------------------------------------------------------
filter(msleep, sleep_total >= 16, bodywt >= 1)

## ------------------------------------------------------------------------
msleep %>% 
    mutate(rem_proportion = sleep_rem / sleep_total) %>%
    head

## ------------------------------------------------------------------------
msleep %>% 
    group_by(order) %>%
    summarise(avg_sleep = mean(sleep_total), 
              min_sleep = min(sleep_total), 
              max_sleep = max(sleep_total),
              total = n())

## ----eval=F--------------------------------------------------------------
## library(dplyr)
## setwd("data")
## my_db <- src_sqlite("my_db.sqlite3", create = T)

## ----eval=F--------------------------------------------------------------
## library(nycflights13)
## flights_sqlite <- copy_to(my_db, flights, temporary = FALSE, indexes = list(
##   c("year", "month", "day"), "carrier", "tailnum"))

## ----eval=F--------------------------------------------------------------
## flights_sqlite <- tbl(nycflights13_sqlite(), "flights")

## ----eval=F--------------------------------------------------------------
## tbl(my_db, sql("SELECT * FROM flights"))

## ----eval=F--------------------------------------------------------------
## tbl(my_db, sql("SELECT * FROM flights WHERE month = 1 AND dep_time = 517"))

