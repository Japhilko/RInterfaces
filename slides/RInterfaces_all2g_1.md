# R Schnittstellen - der Austausch von Daten
Jan-Philipp Kolb  
8 Mai 2017  



# EinfÃ¼hrung und Motivation






## Pluspunkte von R

- Als Weg kreativ zu sein ...
- Graphiken, Graphiken, Graphiken
- In Kombination mit anderen Programmen nutzbar
- Zur Verbindung von Datenstrukturen
- Zum Automatisieren
- Um die Intelligenz anderer Leute zu nutzen ;-)
- ...

## GrÃ¼nde

- R ist [frei verfÃ¼gbar](https://www.r-project.org/). Es kann umsonst [runtergeladen](http://www.inside-r.org/why-use-r) werden.
- R ist eine Skriptsprache 
- Gute MÃ¶glichkeiten fÃ¼r die [Visualisierung](http://www.sr.bham.ac.uk/~ajrs/R/r-gallery.html) 
- R wird immer [populÃ¤rer](https://twitter.com/josiahjdavis/status/559778930476220418)
- [PopularitÃ¤t von R](http://blog.revolutionanalytics.com/popularity/) ist in vielen Bereichen sehr hoch.

![](http://d287f0h5fel5hu.cloudfront.net/blog/wp-content/uploads/2013/06/bar-learn-r-img11.png)


## [Warum R?](http://stats.idre.ucla.edu/r/seminars/intro/)

![Modularer Aufbau](figure/ModularerAufbau.PNG)


## [Die am meisten heruntergeladenen Pakete](https://gallery.shinyapps.io/cran-gauge/)

![](figure/CRANdownloads.PNG)


## [CRAN Task Views](https://cran.r-project.org/web/views/)

![](figure/CRANTaskviews.PNG)


## Motivation - Nachteile von R

1. Daten werden oft anderswo erfasst/eingegeben (oft Excel, SPSS etc.)
2. Nicht jeder ist bereit mit R zu arbeiten 
3. Nicht auf jedem Rechner ist R installiert
4. R ist manchmal zu langsam
5. Schwierigkeiten bei der Arbeit mit groÃen Datenmengen

## Was folgt daraus

1. Schnittstelle zu SPSS/Stata/Excel zum Import von Daten
2. Schnittstelle zu Word/LaTeX
3. MÃ¶glichkeit HTML PrÃ¤sentationen zu erzeugen
4. Nutzung von C++
5. Nutzung von Datenbanken

## Die Nutzung von Schnittstellen beim Import/Export

- Interaktion mit Excel, SPSS, Stata, ...

![Import](figure/Import.PNG)

## [Reproducible Research](http://www.statsmakemecry.com/smmctheblog/the-time-for-reproducible-research-is-now)

![](figure/MiracleOccursImage.png)

## [Was wird bei Wikipedia unter Reproducibility verstanden?](https://en.wikipedia.org/wiki/Reproducibility)

![](figure/Spectrum_of_reproducible_research.png)


## Darstellung von Ergebnissen

- Mit der Schnittstelle zu Javascript lassen sich interaktive Graphiken erzeugen
- Diese kann man auf Websites, in PrÃ¤sentationen oder in Dashboards verwenden


![](figure/visNetwork.jpg)


## [Warum die Schnittstelle zu C++?](http://dirk.eddelbuettel.com/papers/rcpp_workshop_introduction_user2012.pdf)

- [Wenn Schnelligkeit wichtig ist, bietet sich C++ an](http://www.stat.berkeley.edu/scf/paciorek-cppWorkshop.pdf).
- [Dies kann bspw. der Fall sein, wenn sich Schleifen nicht vermeiden lassen](https://www.r-bloggers.com/calling-c-from-r-using-rcpp/).
- [Man wird bei der Programmierung durch RStudio unterstÃ¼tzt](https://support.rstudio.com/hc/en-us/articles/200486088-Using-Rcpp-with-RStudio).
- Es gibt eine [Rcpp Galerie](http://gallery.rcpp.org/), wo man sich Anregungen holen kann.
- Allerdings sollte man zunÃ¤chst versuchen den Rcode so schnell wie mÃ¶glich zu gestalten.

## Die Nutzung von Datenbanken

- Wenn groÃe Datenmengen anfallen, kann die zusÃ¤tzliche Nutzung von Datenbanken sinnvoll sein.
- In R bestehen Schnittstellen sowohl zu relationalen als auch nicht relationalen Datenbanken.
- Datenbanken sollten allerdings erst genutzt werden, wenn alle MÃ¶glichkeiten in R ausgeschÃ¶pft sind. 

## Nutzung der Unterlagen auf GitHub

-   Die folgende Seite ist die Startseite fÃ¼r den Kurs:

<https://japhilko.github.io/Interfaces4R/>

![](figure/Interfaces4r.PNG)

## Wo sind die Sourcecodes?

Wie wird das Github Verzeichnis genutzt?

-   Auf der folgenden Seite sind alle Sourcecodes enthalten:

<https://github.com/Japhilko/RInterfaces>

- Es lohnt sich immer wieder zu dieser Seite zurÃ¼ckzukehren, weil auch hier alle relevanten Dokumente verlinkt sind.

- GrundsÃ¤tzlich kann man der Veranstalung am Besten mit den [kompletten File](https://github.com/Japhilko/RInterfaces/blob/master/slides/RInterfaces_all2g.md) oder der kompletten Browserversion eines Kapitels (sind unter den KapitelÃ¼berschriften verlinkt) folgen. Wenn Teile heruntergeladen werden sollen, bietet es sich an, das entsprechende pdf herunterzuladen.

- Falls Links ins Leere fÃ¼hren - bitte Bescheid sagen.

## Informationen ausdrucken

-   Zum Ausdrucken eignen sich die pdf-Dateien besser. 

-   Diese kÃ¶nnen mit dem Raw Button heruntergeladen werden. 

![Raw Button zum Download](https://raw.githubusercontent.com/Japhilko/GeoData/master/2016/slides/figure/GithubDownload.bmp)

## Weitere Dateien herunterladen

- Begleitend zu den Folien wird meistens auch ein R-File angeboten. 

- Hier kÃ¶nnen Sie entweder das gesamte R-File herunterladen und in R ausfÃ¼hren oder einzelne Befehle per Copy/Paste Ã¼bernehmen.

- Vereinzelt sind auch DatensÃ¤tze vorhanden. 

- `.csv` Dateien kÃ¶nnen direkt von R eingelesen werden (wie das geht werde ich noch zeigen).

- Wenn die `.csv` Dateien heruntergeladen werden sollen auch den Raw Button verwenden.

- Alle anderen Dateien (bspw. `.RData`) auch mittels Raw Button herunterladen.

## Organisatorisches

- ZusÃ¤tzlich gibt es in jedem Kapitel eine oder mehrere Aufgabe(n), da man nur durch eigenes Trainieren auf der Lernkurve vorankommt.
- Die Quellen fÃ¼r die Punkte auf den Folien sind als Link meist in der Ãberschrift hinterlegt.
- Die Links sind nur im HTML Dokument zu sehen aber auch in der pdf vorhanden.

## Links und Quellen


Wen Github nÃ¤her interessiert:

- [Hello World](https://guides.github.com/activities/hello-world/)

- [Understanding the GitHub flow](https://guides.github.com/introduction/flow/)

## Basis R ...

- Wenn man nur R herunterlÃ¤dt und installiert, sieht das so aus:

![](figure/BasisR.PNG)

- So habe ich bis 2012 mit R gearbeitet.

## ... und Rstudio

- Rstudio bietet Heute sehr viel UnterstÃ¼tzung:

![](http://rprogramming.net/wp-content/uploads/2012/10/RStudio-Screenshot.png)

- und macht einige Themen dieses Workshops erst mÃ¶glich





## Aufgabe - Zusatzpakete

Gehen Sie auf <https://cran.r-project.org/> und suchen Sie in dem Bereich, wo die Pakete vorgestellt werden, nach Paketen,...

-  fÃ¼r Reproducible Research
-  fÃ¼r interaktive Darstellungen
-  fÃ¼r High-Performance Computing
-  um mit groÃen Datenmengen umzugehen

# Datenimport






## Dateiformate in R

-  Von R werden quelloffene, nicht-proprietÃ¤re Formate bevorzugt
-  Es kÃ¶nnen aber auch Formate von anderen Statistik Software Paketen eingelesen werden
-  R-user speichern Objekte gerne in sog. Workspaces ab
-  Auch hier jedoch gilt: (fast) alles andere ist mÃ¶glich

## Formate - base package

R unterstÃ¼tzt von Haus aus schon einige wichtige Formate:
		
-  CSV (Comma Separated Values): `read.csv()`
-  FWF (Fixed With Format): `read.fwf()`
-  Tab-getrennte Werte: `read.delim()`



## Datenimport leicht gemacht mit Rstudio

![Import Button](https://i1.wp.com/thepracticalr.files.wordpress.com/2017/01/rstudio-old-import.png?w=456&ssl=1)


## CSV aus dem Web einladen

- Datensatz:

<https://data.montgomerycountymd.gov/api/views/6rqk-pdub/rows.csv?accessType=DOWNLOAD>

- [Datenimport mit Rstudio](https://support.rstudio.com/hc/en-us/articles/218611977-Importing-Data-with-RStudio)

![](figure/ImportCSVPNG.PNG)


## Der Arbeitsspeicher

So findet man heraus, in welchem Verzeichnis man sich gerade befindet


```r
getwd()
```

So kann man das Arbeitsverzeichnis Ã¤ndern:

Man erzeugt ein Objekt in dem man den Pfad abspeichert:


```r
main.path <- "C:/" # Beispiel fÃ¼r Windows
main.path <- "/users/Name/" # Beispiel fÃ¼r Mac
main.path <- "/home/user/" # Beispiel fÃ¼r Linux
```

Und Ã¤ndert dann den Pfad mit setwd()


```r
setwd(main.path)
```

Bei Windows ist es wichtig Slashs anstelle von Backslashs zu verwenden.

## Alternative - Arbeitsspeicher

![](figure/SetWD.PNG)

## Das Paket `readr`


```r
install.packages("readr")
```


```r
library(readr)
```

- [`readr` auf dem Rstudio Blogg](https://blog.rstudio.org/2015/10/28/readr-0-2-0/)

![](figure/readrRstudioBlogg.PNG)



## Import von Excel-Daten

-  `library(readr)` ist fÃ¼r den Import von fremden Datenformaten hilfreich
-  Wenn Excel-Daten vorliegen - als .csv abspeichern


```r
library(readr)
rows <- read_csv("https://data.montgomerycountymd.gov/api/views/6rqk-pdub/rows.csv?accessType=DOWNLOAD")
```



## `.csv`-Daten aus dem Web importieren - zweites Beispiel


```r
url <- "https://raw.githubusercontent.com/Japhilko/
GeoData/master/2015/data/whcSites.csv"

whcSites <- read.csv(url) 
```



```r
head(data.frame(whcSites$name_en,whcSites$category))
```

```
##                                                      whcSites.name_en
## 1 Cultural Landscape and Archaeological Remains of the Bamiyan Valley
## 2                           Minaret and Archaeological Remains of Jam
## 3                          Historic Centres of Berat and Gjirokastra 
## 4                                                             Butrint
## 5                                             Al Qal'a of Beni Hammad
## 6                                                        M'Zab Valley
##   whcSites.category
## 1          Cultural
## 2          Cultural
## 3          Cultural
## 4          Cultural
## 5          Cultural
## 6          Cultural
```

## Das Paket `haven`


```r
install.packages("haven")
```


```r
library(haven)
```

- [Das R-Paket `haven` auf dem Rstudio Blogg](https://blog.rstudio.org/2016/10/04/haven-1-0-0/)

![](figure/havenRstudioBlogg.PNG)

## SPSS Dateien einlesen

- ZunÃ¤chst muss wieder der Pfad zum Arbeitsverzeichnis angeben werden.
- SPSS-Dateien kÃ¶nnen auch direkt aus dem Internet geladen werden:


```r
install.packages("haven")
```



```r
library(haven)
mtcars <- read_sav("https://github.com/Japhilko/RInterfaces/raw/master/data/mtcars.sav")
```

## stata Dateien einlesen


```r
library(haven)
oecd <- read_dta("https://github.com/Japhilko/IntroR/raw/master/2017/data/oecd.dta")
```


## Links

- [Quick-R - Import Data](http://www.statmethods.net/input/importingdata.html)

- [Datenimport bei R-bloggers](https://www.r-bloggers.com/importing-data-into-r-part-ii/)

- [Importing Data into R](https://thepracticalr.wordpress.com/2016/09/23/importing-data-into-r/)

- [Mapping von Arbeitslosendaten in den USA](https://www.r-bloggers.com/mapping-unemployment-data-2016/)

- [Das Paket readr](https://www.r-bloggers.com/readrproblems-returns-tidy-data/)



## Aufgabe - Datenimport

- Gehen Sie auf [meine Github Seite](https://github.com/Japhilko/RInterfaces/blob/master/data/whcSites.csv) und laden Sie den Datensatz zu den WeltkulturerbestÃ¤tten (whcsites) herunter
- Laden Sie den Datensatz mit einer geeigneten Funktion in Ihre Console.
- Finden Sie heraus, wieviele Beobachtungen und Variablen der Datensatz umfasst.
- Wieviele kulturelle/natÃ¼rliche WeltkulturerbestÃ¤tten gibt es im Datensatz?



# Datenexport





## Die Exportformate von R

-  In R werden offene Dateiformate bevorzugt
-  Genauso wie `read.X()` Funktionen stehen viele `write.X()` Funktionen zur VerfÃ¼gung
-  Das eigene Format von R sind sog. Workspaces (`.RData`)

## Beispieldatensatz erzeugen


```r
A <- c(1,2,3,4)
B <- c("A","B","C","D")

mydata <- data.frame(A,B)
```






## Ãberblick Daten Import/Export

- wenn mit R weitergearbeitet wird, eignet sich das `.RData` Format am Besten:


```r
save(mydata, file="mydata.RData")
```

## Daten in `.csv` Format abspeichern


```r
write.csv(mydata,file="mydata.csv") 
```

- Wenn mit Deutschem Excel weitergearbeitet werden soll, eignet sich  `write.csv2` besser


```r
write.csv2(mydata,file="mydata.csv") 
```

- Sonst sieht das Ergebnis so aus:

![](figure/csvDeutsch.PNG)

## [Das Paket `xlsx`](http://www.sthda.com/english/wiki/r-xlsx-package-a-quick-start-guide-to-manipulate-excel-files-in-r#read-an-excel-file)

![](figure/sthda.PNG)



```r
library(xlsx)
write.xlsx(mydata,file="mydata.xlsx") 
```

## [Das Paket `foreign`](https://www.r-bloggers.com/readingwriting-stata-dta-files-with-foreign/)

![](figure/isRstata.PNG)

- Funktionen im Paket `foreign`

![](figure/Funktionenforeign.PNG)


## Daten in stata Format abspeichern


```r
library(foreign)
write.dta(mydata,file="data/mydata.dta") 
```

## Das Paket `rio`


```r
install.packages("rio")
```

![](figure/ImportExport.PNG)

## [Daten als .sav abspeichern (SPSS)](https://cran.r-project.org/web/packages/rio/vignettes/rio.html)


```r
library("rio")
# create file to convert

export(mtcars, "data/mtcars.sav")
```


## Dateiformate konvertieren


```r
export(mtcars, "data/mtcars.dta")

# convert Stata to SPSS
convert("data/mtcars.dta", "data/mtcars.sav")
```


## Links Export

- [Quick R](http://www.statmethods.net/input/exportingdata.html) fÃ¼r das Exportieren von Daten:

- Hilfe zum Export auf dem [cran Server](http://cran.r-project.org/doc/manuals/r-release/R-data.pdf)

- [Daten aus R heraus bekommen](https://www.stat.ubc.ca/~jenny/STAT545A/block05_getNumbersOut.html)


# R und Excel





## Das Paket `xlsx`

- Eine wichtige Datenquelle - [Eurostat](http://appsso.eurostat.ec.europa.eu/nui/setupDownloads.do)


```r
library("xlsx")
dat <- read.xlsx("cult_emp_sex.xls",1)
```


## [Einige Schritte um R und Excel zu verbinden](http://www.milanor.net/blog/steps-connect-r-excel-xlconnect/)

- [Die Excel-Verbindung](https://www.r-bloggers.com/r-the-excel-connection/)


```r
install.packages("XLConnect")
```


```r
library("XLConnect")
```

![[Vignette fÃ¼r XLconnect](https://cran.r-project.org/web/packages/XLConnect/vignettes/XLConnect.pdf)](figure/XLconnect.PNG)

## [Eine Excel Datei aus R erzeugen](http://www.milanor.net/blog/steps-connect-r-excel-xlconnect/)


```r
fileXls <- "data/newFile.xlsx"
unlink(fileXls, recursive = FALSE, force = FALSE)
exc <- loadWorkbook(fileXls, create = TRUE)
createSheet(exc,'Input')
saveWorkbook(exc)
```

## Das Arbeitsblatt mit Daten befÃ¼llen


```r
input <- data.frame('inputType'=c('Day','Month'),'inputValue'=c(2,5))
writeWorksheet(exc, input, sheet = "input", startRow = 1, startCol = 2)
saveWorkbook(exc)
```

## [BERT - Eine weitere Verbindung zwischen R und Excel](https://www.r-bloggers.com/bert-a-newcomer-in-the-r-excel-connection/)

- [Schnellstart mit Excel](https://bert-toolkit.com/bert-quick-start)

![](figure/BERTaddins.PNG)



```r
myFunction <- function(){
 aa <- rnorm(200)
 bb <- rnorm(200)
 res <- lm(aa~bb)$res
 return(res)
}
```


## Link `BERT`

- [BERT: a newcomer in the R Excel connection](https://www.r-bloggers.com/bert-a-newcomer-in-the-r-excel-connection/)

![](figure/NewcomerBERT.PNG)

## Das Paket readxl

- [readxl](https://www.r-bloggers.com/get-data-out-of-excel-and-into-r-with-readxl/)


```r
install.packages("readxl")
```


```r
library(readxl)
```

![](figure/Rexcel.PNG)





## Aufgabe Export nach Excel

- SchrÃ¤nken Sie den Weltkulturerbe Datensatz auf die wichtigsten Spalten ein.
- Erzeugen Sie einen Subdatensatz in dem nur die kulturellen StÃ¤tten enthalten sind. Machen Sie dies analog fÃ¼r die natÃ¼rlichen StÃ¤tten.
- Nutzen Sie das Paket `XLconnect` um die DatensÃ¤tze nach Excel zu Ã¼bertragen. Erstellen Sie ein Blatt fÃ¼r die kulturellen und eins fÃ¼r die natÃ¼rlichen StÃ¤tten.



