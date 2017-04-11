# R und Excel
Jan-Philipp Kolb  
7 Februar 2017  



## Eine wichtige Datenquelle

- [Eurostat](http://appsso.eurostat.ec.europa.eu/nui/setupDownloads.do)


```r
library(xlsx)
dat <- read.xlsx("cult_emp_sex.xls",1)
```

## [Few steps to connect R with Excel](http://www.milanor.net/blog/steps-connect-r-excel-xlconnect/)

- [The excel connection](https://www.r-bloggers.com/r-the-excel-connection/)


```r
install.packages("XLConnect")
```


```r
library("XLConnect")
```

```
## Loading required package: XLConnectJars
```

```
## XLConnect 0.2-12 by Mirai Solutions GmbH [aut],
##   Martin Studer [cre],
##   The Apache Software Foundation [ctb, cph] (Apache POI, Apache Commons
##     Codec),
##   Stephen Colebourne [ctb, cph] (Joda-Time Java library),
##   Graph Builder [ctb, cph] (Curvesapi Java library)
```

```
## http://www.mirai-solutions.com ,
## http://miraisolutions.wordpress.com
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
