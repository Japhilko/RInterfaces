# R und Excel
Jan-Philipp Kolb  
7 Februar 2017  



## Eine wichtige Datenquelle

- [Eurostat](http://appsso.eurostat.ec.europa.eu/nui/setupDownloads.do)


```r
library(xlsx)
dat <- read.xlsx("cult_emp_sex.xls",1)
```

## [Einige Schritte um R und Excel zu verbinden](http://www.milanor.net/blog/steps-connect-r-excel-xlconnect/)

- [The excel connection](https://www.r-bloggers.com/r-the-excel-connection/)


```r
install.packages("XLConnect")
```


```r
library("XLConnect")
```

## [Eine Excel Datei aus R erzeugen](http://www.milanor.net/blog/steps-connect-r-excel-xlconnect/)


```r
fileXls <- "data/newFile.xlsx"
unlink(fileXls, recursive = FALSE, force = FALSE)
exc <- loadWorkbook(fileXls, create = TRUE)
createSheet(exc,'Input')
saveWorkbook(exc)
```

## Das Arbeitsblatt mit Daten befüllen


```r
input <- data.frame('inputType'=c('Day','Month'),'inputValue'=c(2,5))
writeWorksheet(exc, input, sheet = "input", startRow = 1, startCol = 2)
saveWorkbook(exc)
```


## 

- [readxl](https://www.r-bloggers.com/get-data-out-of-excel-and-into-r-with-readxl/)


```r
install.packages("readxl")
```


```r
library(readxl)
```

## Links

- [BERT: a newcomer in the R Excel connection](https://www.r-bloggers.com/bert-a-newcomer-in-the-r-excel-connection/)
