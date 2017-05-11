## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
library(knitr)

## ------------------------------------------------------------------------
CRANmirror <- "http://cran.revolutionanalytics.com"
cran <- contrib.url(repos = CRANmirror,type = "source")
info <- available.packages(contriburl = cran, type = x)
nrow(info)

## ----eval=F--------------------------------------------------------------
## install.packages("RMySQL")

## ------------------------------------------------------------------------
citation("RMySQL")

