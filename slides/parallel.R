## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = FALSE)

## ------------------------------------------------------------------------
library("parallel")

## ----echo=F,eval=F-------------------------------------------------------
## unlist(lapply(1:3, function(x) Sys.getpid()))
## unlist(mclapply(1:3, function(x) Sys.getpid()))

## ------------------------------------------------------------------------
detectCores()

