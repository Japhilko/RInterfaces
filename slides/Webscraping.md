# Webscraping
Jan-Philipp Kolb  
1 Februar 2017  




## Notwendige Pakete


```r
install.packages("tidyverse")
```




```r
library(tidyverse)
```

```
## Loading tidyverse: ggplot2
## Loading tidyverse: tibble
## Loading tidyverse: tidyr
## Loading tidyverse: readr
## Loading tidyverse: purrr
## Loading tidyverse: dplyr
```

```
## Conflicts with tidy packages ----------------------------------------------
```

```
## filter(): dplyr, stats
## lag():    dplyr, stats
```

```r
library(stringr)
library(forcats)
library(ggmap)
library(rvest)
```

```
## Loading required package: xml2
```

```
## 
## Attaching package: 'rvest'
```

```
## The following object is masked from 'package:readr':
## 
##     guess_encoding
```

## SCRAPE DATA FROM WIKIPEDIA


```r
html.world_ports <- read_html("https://en.wikipedia.org/wiki/List_of_busiest_container_ports")
df.world_ports <- html_table(html_nodes(html.world_ports, "table")[[2]], fill = TRUE)
```

## Die Daten anschauen


```r
glimpse(df.world_ports)
```

```
## Observations: 50
## Variables: 14
## $ Rank     <int> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16...
## $ Port     <chr> "Shanghai", "Singapore", "Shenzhen", "Hong Kong", "Ni...
## $ Economy  <chr> "China", "Singapore", "China", "China", "China", "Sou...
## $ 2014[1]  <chr> "35,268", "33,869", "23,798", "22,374", "19,450", "18...
## $ 2013[2]  <chr> "33,617", "32,240", "23,280", "22,352", "17,351", "17...
## $ 2012[3]  <chr> "32,529", "31,649", "22,940", "23,117", "16,670", "17...
## $ 2011[4]  <chr> "31,700", "29,937", "22,570", "24,384", "14,686", "16...
## $ 2010[5]  <chr> "29,069", "28,431", "22,510", "23,532", "13,144", "14...
## $ 2009[6]  <chr> "25,002", "25,866", "18,250", "20,983", "10,502", "11...
## $ 2008[7]  <chr> "27,980", "29,918", "21,414", "24,248", "11,226", "13...
## $ 2007[8]  <chr> "26,150", "27,932", "21,099", "23,881", "9,349", "13,...
## $ 2006[9]  <chr> "21,710", "24,792", "18,469", "23,539", "7,068", "12,...
## $ 2005[10] <chr> "18,084", "23,192", "16,197", "22,427", "5,208", "11,...
## $ 2004[11] <chr> "14,557", "21,329", "13,615", "21,984", "4,006", "11,...
```


## Links

- [How to really do an analysis in R (part 1, data manipulation)](https://www.r-bloggers.com/how-to-really-do-an-analysis-in-r-part-1-data-manipulation/)
