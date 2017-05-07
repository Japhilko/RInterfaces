## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ------------------------------------------------------------------------
n=100

## ----echo=F--------------------------------------------------------------
library(knitr)
chunk_names <- c("eval","warning","cache")
chunk_descr <- c("Soll Rcode evaluiert werden?","Sollen Warnings angezeigt werden?","Soll der Output gespeichert werden?")
dat_chunks <- data.frame(Argument=chunk_names,Beschreibung=chunk_descr)
kable(dat_chunks)

## ----eval=F--------------------------------------------------------------
## install.packages("knitr")

## ------------------------------------------------------------------------
library("knitr")

## ------------------------------------------------------------------------
a <- runif(10)
b <- rnorm(10)
ab <- cbind(a,b)
kable(ab)

