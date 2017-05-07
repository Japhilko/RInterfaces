## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,cache=T,message=F,warning = F)

## ----eval=F--------------------------------------------------------------
## install.packages("NLP")
## install.packages("tm")
## install.packages("FactoMineR")

## ------------------------------------------------------------------------
library("stringi")

## ------------------------------------------------------------------------
library("tm")

## ------------------------------------------------------------------------
library("FactoMineR")

## ----wikititles----------------------------------------------------------
wiki <- "http://de.wikipedia.org/wiki/"

titles <- c("Zika-Virus", "Influenza-A-Virus_H1N1", 
            "Spanische_Grippe","Influenzavirus",
            "Vogelgrippe_H5N1",
            "Legionellose-Ausbruch_in_Warstein_2013",
            "Legionellose-Ausbruch_in_Jülich_2014")

## ----eval=F--------------------------------------------------------------
## articles <- character(length(titles))
## 
## for (i in 1:length(titles)){
##     articles[i] <- stri_flatten(
##       readLines(stri_paste(wiki, titles[i])), col = " ")
## }
## 
## docs <- Corpus(VectorSource(articles))

## ----prepdata,eval=F-----------------------------------------------------
## docs2 <- tm_map(docs, function(x) stri_replace_all_regex(
##   x, "<.+?>", " "))
## docs3 <- tm_map(docs2, function(x) stri_replace_all_fixed(
##   x, "\t", " "))

## ----eval=F--------------------------------------------------------------
## docs4 <- tm_map(docs3, PlainTextDocument)
## docs5 <- tm_map(docs4, stripWhitespace)
## docs6 <- tm_map(docs5, removeWords, stopwords("german"))
## docs7 <- tm_map(docs6, removePunctuation)
## docs8 <- tm_map(docs7, tolower)
## # docs8 <- tm_map(docs8, PlainTextDocument)

## ----eval=F--------------------------------------------------------------
## dtm <- DocumentTermMatrix(docs8)

## ----eval=F--------------------------------------------------------------
## dtm2 <- as.matrix(dtm)
## frequency <- colSums(dtm2)
## frequency <- sort(frequency, decreasing=TRUE)
## words <- frequency[frequency>20]
## s <- dtm2[1,which(colnames(dtm2) %in% names(words))]
## 
## for(i in 2:nrow(dtm2)){
##   s <- cbind(s,dtm2[i,which(colnames(dtm2) %in%
##                               names(words))])
## }
## 
## colnames(s) <- titles

## ----eval=F,echo=F-------------------------------------------------------
## save(s,file="../data/KrankheitenWikipedia.Rmd")

## ----echo=F--------------------------------------------------------------
load("../data/KrankheitenWikipedia.Rmd")

## ------------------------------------------------------------------------
PCA(s)

## ------------------------------------------------------------------------
s0 <- s/apply(s,1,sd)
h <- hclust(dist(t(s0)), method = "ward")

plot(h, labels = titles, sub = "")

