# rvest
Jan-Philipp Kolb  
09 Mai 2017  



## [Das Paket `rvest`](https://github.com/hadley/rvest)


```r
install.packages("rvest")
```

- `rvest` - Easily Harvest (Scrape) Web Pages


```r
library(rvest)
```





```r
ht <- read_html('https://www.google.co.in/search?q=guitar+repair+workshop')
links <- ht %>% html_nodes(xpath='//h3/a') %>% html_attr('href')
gsub('/url\\?q=','',sapply(strsplit(links[as.vector(grep('url',links))],split='&'),'[',1))
```

```
## [1] "http://theguitarrepairworkshop.com/"                                                                   
## [2] "http://www.guitarservices.com/"                                                                        
## [3] "http://www.guitarrepairbench.com/guitar-building-projects/guitar-workshop/guitar-workshop-project.html"
## [4] "https://www.taylorguitars.com/dealer/guitar-repair-workshop-ltd"                                       
## [5] "https://www.facebook.com/The-Guitar-Repair-Workshop-847517635259712/"                                  
## [6] "http://www.laweekly.com/music/10-best-guitar-repair-shops-in-los-angeles-4647166"                      
## [7] "http://guitarworkshopglasgow.com/pages/repairs-1"                                                      
## [8] "https://www.justdial.com/Mumbai/Guitar-Repair-Services/nct-10988623"                                   
## [9] "https://www.justdial.com/Delhi-NCR/Guitar-Repair-Services/nct-10988623"
```


## Hin und weg


```r
library(XML)
url4<-"http://api.openstreetmap.org/api/0.6/node/25439439"
obj4 <- xmlParse(url4)
xpathApply(obj4,"//tag[@k = 'railway:station_category']")[[1]]
```

```
## <tag k="railway:station_category" v="2"/>
```

- [Wikipedia Artikel Bahnhofskategorien](https://de.wikipedia.org/wiki/Bahnhofskategorie)

![](figure/Bahnhofskategorien.PNG)

## Exkurs: Bahnhofskategorien

- [rvest: Easily Harvest (Scrape) Web Pages](https://cran.r-project.org/web/packages/rvest/index.html)


```r
library(rvest)
bhfkat<-read_html(
  "https://de.wikipedia.org/wiki/Bahnhofskategorie")
df_html_bhfkat<-html_table(
  html_nodes(bhfkat, "table")[[1]],fill = TRUE)
```

## Bahnhofskategorien Übersicht


 Stufe  Bahnsteigkanten   Bahnsteiglänge    Reisende/Tag        Zughalte/Tag 
------  ----------------  ----------------  ------------------  -------------
     6  01                > 000 bis 090 m   00000 bis 00049     000 bis 0010 
     5  02                > 090 bis 140 m   00050 bis 00299     011 bis 0050 
     4  03 bis 04         > 140 bis 170 m   00300 bis 00999     051 bis 0100 
     3  05 bis 09         > 170 bis 210 m   01000 bis 09999     101 bis 0500 
     2  10 bis 14         > 210 bis 280 m   10.000 bis 49.999   501 bis 1000 
     1  00i ab 15         > 280 m           00000i ab 50.000    000i ab 1001 


## Links

- [Scraping CRAN with rvest](https://www.r-bloggers.com/scraping-cran-with-rvest/)
