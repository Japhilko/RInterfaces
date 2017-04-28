# R Schnittstellen
Jan-Philipp Kolb  
28 April 2017  



# Einführung und Motivation






## Pluspunkte von R

- Als Weg kreativ zu sein ...
- Graphiken, Graphiken, Graphiken
- In Kombination mit anderen Programmen nutzbar
- Zur Verbindung von Datenstrukturen
- Zum Automatisieren
- Um die Intelligenz anderer Leute zu nutzen ;-)
- ...


## Warum R?

![Modularer Aufbau](figure/ModularerAufbau.PNG)


## Gründe

- R ist [frei verfügbar](http://www.inside-r.org/why-use-r). Es kann umsonst [runtergeladen](http://mirrors.softliste.de/cran/) werden.

- R ist eine Skriptsprache 
- Gute Möglichkeiten für die [Visualisierung](http://research.stowers-institute.org/efg/R/) ([Link](http://www.sr.bham.ac.uk/~ajrs/R/r-gallery.html) )

- R wird immer [populärer](https://twitter.com/josiahjdavis/status/559778930476220418)

- [Popularität von R](http://blog.revolutionanalytics.com/popularity/)

## Übersicht - warum R

![pic](http://d287f0h5fel5hu.cloudfront.net/blog/wp-content/uploads/2013/06/bar-learn-r-img11.png)



## Nachteile von R

1. Daten werden oft anderswo erfasst
2. Nicht jeder ist bereit mit R zu arbeiten 
3. Nicht auf jedem Rechner ist R installiert
4. R ist manchmal zu langsam
5. Schwierigkeiten bei der Arbeit mit großen Datenmengen

## Was folgt daraus

1. Schnittstelle zu SPSS/Stata/Excel zum Import von Daten
2. Schnittstelle zu Word
3. Möglichkeit HTML Präsentationen zu erzeugen
4. Nutzung von C++
5. Nutzung von Datenbanken

# Warum die Nutzung von Schnittstellen?

## Die Nutzung von Schnittstellen beim Import/Export

- Interaktion mit SPSS, Stata

![Import](figure/Import.PNG)

## [Reproducible Research](http://www.statsmakemecry.com/smmctheblog/the-time-for-reproducible-research-is-now)

![](figure/MiracleOccursImage.png)

## [Was wird bei Wikipedia unter Reproduibility verstanden?](https://en.wikipedia.org/wiki/Reproducibility)

![](figure/Spectrum_of_reproducible_research.png)


## Darstellung von Ergebnissen

- Mit der Schnittstelle zu Javascript lassen sich interaktive Graphiken erzeugen
- Diese kann man auf Websites, in Präsentationen oder in Dashboards verwenden


![](figure/visNetwork.jpg)


## [Warum die Schnittstelle zu C++?](http://dirk.eddelbuettel.com/papers/rcpp_workshop_introduction_user2012.pdf)

- [Wenn Schnelligkeit wichtig ist, bietet sich C++ an](http://www.stat.berkeley.edu/scf/paciorek-cppWorkshop.pdf)
- [Dies ist kann bspw. der Fall sein, wenn sich Schleifen nicht vermeiden lassen](https://www.r-bloggers.com/calling-c-from-r-using-rcpp/)
- [Man wird bei der Programmierung durch RStudio unterstützt](https://support.rstudio.com/hc/en-us/articles/200486088-Using-Rcpp-with-RStudio)
- Es gibt eine [Rcpp Galerie](http://gallery.rcpp.org/), wo man sich Anregungen holen kann

## Die Nutzung von Datenbanken

- Wenn große Datenmengen anfallen, kann die zusätzliche Nutzung von Datenbanken sinnvoll sein
- In R bestehen Schnittstellen sowohl zu relationalen als auch nicht relationalen Datenbanken

# Nutzung der Unterlagen auf GitHub

## Wie wird das Github Verzeichnis genutzt

-   Die folgende Seite ist die Startseite für den Kurs:

<https://github.com/Japhilko/RInterfaces>

- Es lohnt sich immer wieder zu dieser Seite zurückzukehren, weil hier alle relevanten Dokumente verlinkt sind.

- Grundsätzlich bietet es sich an, den einzelnen Teilen der Veranstaltung mit dem File zu folgen, dass mit dem Begriff _Browser_ verlinkt ist.

## Informationen audrucken

-   Zum Ausdrucken eignen sich die pdf-Dateien besser. 

-   Diese können mit dem Raw Button heruntergeladen werden. 

![Raw Button zum Download](https://raw.githubusercontent.com/Japhilko/GeoData/master/2016/slides/figure/GithubDownload.bmp)

## Weitere Dateien herunterladen

- Begleitend zu den Folien wird meistens auch ein R-File angeboten. 

- Hier können Sie entweder das gesamte R-File herunterladen und in R ausführen oder einzelne Befehle per Copy/Paste übernehmen.

- Vereinzelt sind auch Datensätze vorhanden. 

- `.csv` Dateien können direkt von R eingelesen werden (wie das geht werde ich noch zeigen).

- Wenn die `.csv` Dateien heruntergeladen werden sollen auch den Raw Button verwenden.

- Alle anderen Dateien (bspw. `.RData`) auch mittels Raw Button herunterladen.

## Organisatorisches


- Zusätzlich gibt es für jedes Kapitel eine Aufgabe, da man nur durch eigenes Trainieren auf der Lernkurve vorankommt.

- Die Quellen sind als Link meist in der Überschrift hinterlegt
- Die Links sind nur im HTML Dokument zu sehen aber auch in der pdf vorhanden

## Links und Quellen


Wen Github näher interessiert:

- [Hello World](https://guides.github.com/activities/hello-world/)

- [Understanding the GitHub](https://guides.github.com/introduction/flow/)


# Datenimport






## Dateiformate in R

-  Von R werden quelloffene, nicht-proprietäre Formate bevorzugt
-  Es können aber auch Formate von anderen Statistik Software Paketen eingelesen werden
-  R-user speichern Objekte gerne in sog. Workspaces ab
-  Auch hier jedoch gilt: (fast) alles andere ist möglich

## Formate - base package

R unterstützt von Haus aus schon einige wichtige Formate:
		
-  CSV (Comma Separated Values): `read.csv()`
-  FWF (Fixed With Format): `read.fwf()`
-  Tab-getrennte Werte: `read.delim()`



## Datenimport leicht gemacht mit Rstudio

![Import Button](https://i1.wp.com/thepracticalr.files.wordpress.com/2017/01/rstudio-old-import.png?w=456&ssl=1)


## CSV aus dem Web einladen

- Datensatz:

<https://data.montgomerycountymd.gov/api/views/6rqk-pdub/rows.csv?accessType=DOWNLOAD>

- [Datenimport mit Rstudio](https://support.rstudio.com/hc/en-us/articles/218611977-Importing-Data-with-RStudio)


## Der Arbeitsspeicher

So findet man heraus, in welchem Verzeichnis man sich gerade befindet


```r
getwd()
```

So kann man das Arbeitsverzeichnis ändern:

Man erzeugt ein Objekt in dem man den Pfad abspeichert:


```r
main.path <- "C:/" # Beispiel für Windows
main.path <- "/users/Name/" # Beispiel für Mac
main.path <- "/home/user/" # Beispiel für Linux
```

Und ändert dann den Pfad mit setwd()


```r
setwd(main.path)
```

Bei Windows ist es wichtig Slashs anstelle von Backslashs zu verwenden.

## Alternative - Arbeitsspeicher

![](figure/SetWD.PNG)

## Import von Excel-Daten

-  `library(foreign)` ist für den Import von fremden Datenformaten nötig
-  Wenn Excel-Daten vorliegen - als .csv abspeichern
-  Dann kann `read.csv()` genutzt werden um die Daten einzulesen.
- Bei Deutschen Daten kann es sein, dass man `read.csv2()` wegen der Komma-Separierung braucht.


```r
library(foreign)
?read.csv
?read.csv2
```

## CSV Dateien einlesen

Zunächst muss das Arbeitsverzeichnis gesetzt werden, in dem sich die Daten befinden:


```r
Dat <- read.csv("schuldaten_export.csv")
```

Wenn es sich um Deutsche Daten handelt:


```r
Dat <- read.csv2("schuldaten_export.csv")
```


## Import csv 


```r
url <- "https://raw.githubusercontent.com/Japhilko/
GeoData/master/2015/data/whcSites.csv"

whcSites <- read.csv(url) 
```


## SPSS Dateien einlesen

Dateien können auch direkt aus dem Internet geladen werden:


```r
link<- "http://www.statistik.at/web_de/static/
mz_2013_sds_-_datensatz_080469.sav"

?read.spss
Dat <- read.spss(link,to.data.frame=T)
```

## stata Dateien einlesen


```r
MZ02 <- read.dta("MZ02.dta")
```

- Einführung in Import mit R ([is.R](http://is-r.tumblr.com/post/37181850668/reading-writing-stata-dta-files-with-foreign))


## Links

- [Quick-R - Import Data](http://www.statmethods.net/input/importingdata.html)

- [Datenimport bei R-bloggers](https://www.r-bloggers.com/importing-data-into-r-part-ii/)

- [Importing Data into R](https://thepracticalr.wordpress.com/2016/09/23/importing-data-into-r/)

- [Mapping von Arbeitslosendaten in den USA](https://www.r-bloggers.com/mapping-unemployment-data-2016/)

- [Das Paket readr](https://www.r-bloggers.com/readrproblems-returns-tidy-data/)

# R und Excel





## Eine wichtige Datenquelle

- [Eurostat](http://appsso.eurostat.ec.europa.eu/nui/setupDownloads.do)


```r
library(xlsx)
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



## Das Paket readxl

- [readxl](https://www.r-bloggers.com/get-data-out-of-excel-and-into-r-with-readxl/)


```r
install.packages("readxl")
```


```r
library(readxl)
```

## Links

- [BERT: a newcomer in the R Excel connection](https://www.r-bloggers.com/bert-a-newcomer-in-the-r-excel-connection/)

![](figure/NewcomerBERT.PNG)



# Präsentation von Daten - Reproducible Research





## [CRAN Taskview zu reproducible research](https://cran.r-project.org/web/views/ReproducibleResearch.html)

![](figure/TaskViewReproducibleResearch.PNG)


## Resourcen

- [Reproducible Research
with R and RStudio](https://englianhu.files.wordpress.com/2016/01/reproducible-research-with-r-and-studio-2nd-edition.pdf)

- [A crash course in reproducible research in R](http://t-redactyl.io/blog/2016/10/a-crash-course-in-reproducible-research-in-r.html)



# Word Dokumente mit R erstellen





## Ein Markdown Dokument mit Rstudio erzeugen

![](figure/r2wordstart.PNG)


## Mein erstes mit R erzeugtes Word Dokument

![](figure/meinWord.PNG)

## Erstes Beispiel

![](figure/ErstesWord.PNG)

# Das Arbeiten mit Markdown

## Rmarkdown - erste Schritte

Markdown ist eine sehr einfache Syntax, die es Benutzern erlaubt, aus einfachen Textdateien gut gelayoutete Dokumente zu erstellen.

```
**fettes Beispiel**
*kursives Beispiel*
~~durchgestrichen~~
- Aufzählungspunkt
```

**fettes Beispiel**

*kursives Beispiel*

~~durchgestrichen~~

- Aufzählungspunkt

## Weitere Markdown Befehle

```
### Überschrift Ebene 3
#### Überschrift Ebene 4
[Meine Github Seite](https://github.com/Japhilko)
```

### Überschrift Ebene 3

#### Überschrift Ebene 4

[Meine Github Seite](https://github.com/Japhilko)

## Weitere Markdown Befehle

- So kann man Bilder einbinden:
- Man kann entweder einen Link angeben:

```
![BSP](http://e-scientifics.de/content/example_kinderbild.jpg)
```

- oder einen (Unterordner) in dem das Bild liegt:

```
![BSP 2](figure/example.png)
```

- in den eckigen Klammern steht die Bildunterschrift
- alle gängigen Formate (.png, .jpeg,.gif) können so eingebunden werden
- Man kann auch noch weitere Optionen spezifizieren (Größe, Breite etc.) - dazu später mehr

## Chunks - Erste Schritte

- Es lassen sich so genannte Chunks einfügen
- In diesen Chunks wird ganz normaler R-code geschrieben

![](figure/NotebooksBasicEx.PNG)

## Button um Chunks einzufügen

- Die default Version eines Chunks ist R
- Man hat aber auch die Möglichkeit andere Programmiersprachen einzubinden

![](figure/ChunkButton.PNG)

## Inline Code

![](figure/RinlineEx.PNG)


```r
n=100
```

Ein inline Codeblock: 100

## Chunk Optionen

- [Man kann den Chunks Optionen mitgeben:](https://yihui.name/knitr/options/)


Argument   Beschreibung                        
---------  ------------------------------------
eval       Soll Rcode evaluiert werden?        
warning    Sollen Warnings angezeigt werden?   
cache      Soll der Output gespeichert werden? 

- Bei eval kann ein logischer Wert angegeben werden oder eine/mehrere Nummer(n)  



## Optionen

![](figure/RwordOptions.PNG)

## Optionen für Word Output

![](figure/WordOutputOptions.PNG)

## Code Hervorhebung

- pygments Hervorhebung

![](figure/pygmentsSnippet.PNG)


- tango

![](figure/tangoSnippet.PNG)


## Das Paket `knitr`


```r
install.packages("knitr")
```


```r
library("knitr")
```

- Das Paket knitr enthält zahlreiche wichtige Funktionen
- Beispiel: Befehl `kable` um Tabellen zu erzeugen

## Eine Tabelle mit `kable` erzeugen


```r
a <- runif(10)
b <- rnorm(10)
ab <- cbind(a,b)
kable(ab)
```

         a            b
----------  -----------
 0.8939412   -0.0522295
 0.7727248    0.9332350
 0.8746124    2.2482572
 0.5507054   -0.4579231
 0.2041761   -2.4619203
 0.1463845    0.4470147
 0.7333708    0.0555823
 0.8677976   -0.9933719
 0.5543129   -1.0102304
 0.5508996    0.2758732

## [Vorlagen verwenden](http://rmarkdown.rstudio.com/articles_docx.html)

- Formatvorlagen können verändert werden

1. Ein Word Dokument mit Rmarkdown erstellen
2. Das Dokument in Word öffnen und Format verändern 
3. Vorlage als Referenz angeben

![](figure/RefDoc.PNG)


## Resourcen

- Interview - [Ein Word Dokument mit wenig Aufwand schreiben](https://www.r-statistics.com/2013/03/write-ms-word-document-using-r-with-as-little-overhead-as-possible/)

- [pander: Ein R Pandoc Wrapper](http://rapporter.github.io/pander/)

- [Ein Schummelzettel](https://www.rstudio.com/wp-content/uploads/2015/06/rmarkdown-german.pdf)

- [Einführung in Markdown](https://github.com/ctreffe/r-space/wiki/R-Markdown-Intro)

- [Warum TeX besser als Word ist](http://factorgrad.blogspot.de/2010/07/why-latex-is-superior-to-ms-word.html)


#	PDF Dokumente und Präsentationen mit LaTeX, Beamer und Sweave








## Präsentationen mit Rmarkdown - beamer Präsentationen

![](figure/beamerexample.PNG)

## Beamer Optionen

![](figure/beamerOptions.PNG)

## Beamer Themen

![](http://1.bp.blogspot.com/-ZTtDq0hOkqY/Ti0Z3WwoIJI/AAAAAAAAAPc/HM3t4j4t7h0/s1600/Screenshot%2B-%2B07252011%2B-%2B03%253A22%253A15%2BAM.png)

## Chunks einfügen

- Auch hier lassen sich natürlich Chunks einfügen
- Wenn `cache=T` angegeben ist, wird das Ergebnis des Chunks abgespeichert
- Es ist sinnvoll die Chunks zu benennen, dann findet man auch das Ergebnis einfacher

![](figure/CacheBenennung.PNG)

## Ergebnis - Cache

![](figure/ErgZufallszahlen.PNG)

## Wie man das im Header des Dokuments angibt

```
---
title: "Intro - Erste Schritte"
author: "Jan-Philipp Kolb"
date: "10 April 2017"
output:
  beamer_presentation: 
    colortheme: beaver
    theme: CambridgeUS
---
```

## Inhaltsverzeichnis I

![](figure/BeamerInhaltsVZ.PNG)

## Inhaltsverzeichnis II

```
output: 
  beamer_presentation: 
    toc: yes
```


## Optionen für die Graphikeinbindung

- *fig_caption: false*, wenn man keine Bildunterschriften haben möchte

![](figure/figOpts.PNG)

## Präsentationen mit Sweave

- Das Dokument erstellen

![](figure/BSPsweave.png)

## Sweave Präsentation

- Ganz normaler LaTeX Code wird verwendet

![](figure/Sweave1ex.PNG)

## Chunks bei Sweave

- Auch hier kann R-code verwendet werden

![](figure/SweaveCodeChunk.PNG)

## [Chunk Optionen](http://k-baeumchen.fuhlbrueck.net/R-und-LaTeX.html)

- Auch bei Sweave Chunks können Optionen mitgegeben werden

![](figure/SweaveOptionen.PNG)

## Inline Code

- Manchmal braucht man das Ergebnis direkt auf der Folie

```
\Sexpr{}
```

![](figure/CRANpackages.PNG)

## Inline Code - das Ergebnis

![](figure/CRANmirror.PNG)


## PDF Paper mit R

- Mit R ist es möglich Berichte oder Paper zu erzeugen
- Dies eignet sich besonders gut, wenn man viel Code hat oder einen Bericht sehr oft erzeugen muss
- Literatur lässt sich am Besten mit einem bibtex file einbauen


## [Jabref](http://www.jabref.org/)

- Literaturverwaltungssystem

![](figure/Exjabref.PNG)

## Referenz mit R bekommen

- Mit dem Befehl `citation()` bekommt man sehr schnell die Referenz


```r
citation("RMySQL")
```

```
## 
## To cite package 'RMySQL' in publications use:
## 
##   Jeroen Ooms, David James, Saikat DebRoy, Hadley Wickham and
##   Jeffrey Horner (2017). RMySQL: Database Interface and 'MySQL'
##   Driver for R. R package version 0.10.11.
##   https://CRAN.R-project.org/package=RMySQL
## 
## A BibTeX entry for LaTeX users is
## 
##   @Manual{,
##     title = {RMySQL: Database Interface and 'MySQL' Driver for R},
##     author = {Jeroen Ooms and David James and Saikat DebRoy and Hadley Wickham and Jeffrey Horner},
##     year = {2017},
##     note = {R package version 0.10.11},
##     url = {https://CRAN.R-project.org/package=RMySQL},
##   }
```

![](figure/bibtexRmysql.PNG)


## Das bibtex file einbinden I

![](figure/LiteraturEinbinden.PNG)

## Das bibtex file einbinden II

```
---
title: "R Schnittstellen"
author: "Jan-Philipp Kolb"
date: "21 April 2017"
output: 
  pdf_document: default
bibliography: Rschnittstellen.bib
---
```


## Das Ergebnis

![](figure/bibtexErgebnis.PNG)


## Links

- [Optionen für Beamer Präsentationen](http://rmarkdown.rstudio.com/beamer_presentation_format.html)

- [Wie R und LaTeX zusammen funktionieren](https://www.r-bloggers.com/from-openoffice-noob-to-control-freak-a-love-story-with-r-latex-and-knitr/)



# HTML Dokumente, Präsentationen und Dashboards mit Rmarkdown








## [Präsentationen - Rpres der einfachste Weg](https://rstudio-pubs-static.s3.amazonaws.com/27777_55697c3a476640caa0ad2099fe914ae5.html#/)

![](figure/Rpresentations.PNG)

## Eine erste Präsentation

![](figure/RpresStart.PNG)

## Erste Daten eintragen

- Für Vergessliche:


```
## [1] "Fri Apr 28 14:56:19 2017"
```

## Eine Folie mit Formel

- Die Formel kann wie in LaTeX eingegeben werden

```
$$
\begin{equation}\label{eq2}
t_{i}=\sum\limits_{k=1}^{M_{i}}{y_{ik}}=M_{i}\bar{Y}_{i}. 
\end{equation}
$$
```

![](figure/FolieLatexCode.PNG)

## Zwei Spalten

```
Folie mit zwei Spalten
====================================
Erste Spalte
***
Zweite Spalte
```

## Folienübergänge

```
transition: rotate
```

![](figure/RpresRotate.PNG)

## [Weitere mögliche Folienübergänge](https://support.rstudio.com/hc/en-us/articles/200714013-Slide-Transitions-and-Navigation)


-    none
-    linear
-    rotate
-    fade
-    zoom
-    concave

## Folientypen

```
Ein neues Kapitel einfügen
====================================
type: section
```

```
Anderer Folientyp
====================================
type: prompt
```



```
Noch ein anderer Folientyp
====================================
type: alert
```

## [Die Schriftart wechseln](https://support.rstudio.com/hc/en-us/articles/200532307)

- Die [CSS Schrifttypen](https://www.w3schools.com/cssref/css_websafe_fonts.asp) können verwendet werden

```
Meine Präsentation
========================================
author: Jan-Philipp Kolb
font-family: 'Impact'
```

## Schrifttypen können auch importiert werden


```
Meine Präsentation
========================================
author: Jan-Philipp Kolb
font-import: http://fonts.googleapis.com/css?family=Risque
font-family: 'Risque'
```

![](figure/SchriftartRisque.PNG)

## Kleineren Text

Normale Schriftgröße

```
<small>This sentence will appear smaller.</small>
```

## Die Präsentation anschauen

- Das Ergebnis ist hier zu sehen:

<http://rpubs.com/Japhilko82/FirstRpubs>

![](https://support.rstudio.com/hc/en-us/article_attachments/202008388/Screen_Shot_2015-06-04_at_3.51.21_PM.png)


# Eine ioslides Präsentation

## Eine ioslides Präsentation

![](figure/ioslidespres.PNG)

## [ioslides - Der Start](http://rmarkdown.rstudio.com/ioslides_presentation_format.html) 


![](figure/ioslidesBSP.PNG)


## Weitere Dinge tun 


- Ein Bild einbinden

```
![picture of spaghetti](images/spaghetti.jpg)
```

## Ein Logo hinzu

```
---
title: "ioslides Beispiel"
author: "Jan-Philipp Kolb"
date: "20 April 2017"
output: 
  ioslides_presentation:
    logo: figure/Rlogo.png
---
```


![](figure/ioslidesRlogo.PNG)

# Eine slidy Präsentation


## slidy Präsentationen


![](figure/sluidypresentations.PNG)


## [Was ist CSS?](https://de.wikipedia.org/wiki/Cascading_Style_Sheets)

![](https://upload.wikimedia.org/wikipedia/commons/8/83/CSS-Logo.png)

- Stylesheet-Sprache für elektronische Dokumente
- eine der Kernsprachen des World Wide Webs.
- CSS wurde entworfen, um Darstellungsvorgaben weitgehend von den Inhalten zu trennen




## Cascading Style Files

- [Custom CSS](http://rmarkdown.rstudio.com/html_document_format.html#custom_css)

- [CSS](https://en.wikipedia.org/wiki/Cascading_Style_Sheets)

- [CSS pro tipps](https://github.com/AllThingsSmitty/css-protips#use-a-css-reset)

## knitr Engines

- [knitr Language Engines](http://rmarkdown.rstudio.com/authoring_knitr_engines.html)

- [slidify](http://slidify.org/)

## Tabellen

- Quelle: [R Studio, and Presentations, and Git! Oh my!](https://www.r-bloggers.com/r-studio-and-presentations-and-git-oh-my/)



  1    2    3    4    5    6    7    8    9   10
---  ---  ---  ---  ---  ---  ---  ---  ---  ---
  0    0    0    0    0    0    0    0    0    1
  0    0    0    0    0    0    0    0    1    0
  0    0    0    0    0    0    0    1    0    0
  0    0    0    0    0    0    1    0    0    0
  0    0    0    0    0    1    0    0    0    0
  0    0    0    0    1    0    0    0    0    0
  0    0    0    1    0    0    0    0    0    0
  0    0    1    0    0    0    0    0    0    0
  0    1    0    0    0    0    0    0    0    0
  1    0    0    0    0    0    0    0    0    0


## Das CSS ändern

Um den Präsentationstyp zu ändern kann man das CSS verändern

- [Cascading Style Sheets](https://de.wikipedia.org/wiki/Cascading_Style_Sheets) (CSS)

- Bspw. lässt sich die [Farbe (HTML)](http://tomheller.de/html-farben.html) ändern.
- [Man kann eine andere Schriftart wählen](https://www.mediaevent.de/css/font-family.html)
- [Es gibt zahlreiche Möglichkeiten der Schriftformatierung](https://wiki.selfhtml.org/wiki/CSS/Eigenschaften/Schriftformatierung)
- [Daneben gibt es viele weitere Dinge, die sich mit dem CSS steuern lassen](https://www.w3.org/TR/WCAG20-TECHS/C22.html)

# HTML Dokumente

## Ein HTML Dokument erzeugen

![](figure/NewHTML.PNG)

## Ein Template verwenden

![](figure/UsingTemplate.PNG)

## [Weitere Vorlagen nutzen](http://rmarkdown.rstudio.com/developer_document_templates.html)

- Es gibt viele Formate - [manche müssen erst aktiviert werden](https://blog.rstudio.org/2016/03/21/r-markdown-custom-formats/:



## [Beispiele für Templates](https://github.com/juba/rmdformats)

![](https://rstudioblog.files.wordpress.com/2016/03/readthedown.png)

# Dashboards

## [Beispiel R-Pakete](https://gallery.shinyapps.io/cran-gauge/)

![](figure/CRANdownloads.PNG)


## [Paket installieren](https://blog.rstudio.org/2016/05/17/flexdashboard-easy-interactive-dashboards-for-r/)


```r
install.packages("flexdashboard", type = "source")
```

![](figure/flexdashboards.PNG)

## Ein Dashboard erstellen mit Rstudio

![](https://i2.wp.com/rmarkdown.rstudio.com/flexdashboard/images/NewRMarkdown.png?zoom=2)

## [Gallerie](http://rmarkdown.rstudio.com/gallery.html)


```r
install.packages("highcharter", type = "source")
```

![](figure/RmarkdownGallery.PNG)

## Links 

- [Verschiedene Markdown Dokumente zusammen fügen](http://stackoverflow.com/questions/25824795/how-to-combine-two-rmarkdown-rmd-files-into-a-single-output)

![](figure/stackoverflowCombine.PNG)


- [Verschiedene CSS Fonts](http://www.cssfontstack.com/)

# Notebooks zur Integration von anderen Programmiersprachen (Python,LaTeX,Julia)





## Notebooks

- [Warum R Notebook nutzen](https://news.ycombinator.com/item?id=12683625)

![](http://rmarkdown.rstudio.com/images/notebook-demo.png)

# Rnotebooks

## Ein Rnotebook anlegen

![](figure/startNotebook.png)

## Rnotebook - erste Schritte

- Es lassen sich so genannte Chunks einfügen
- In diesen Chunks wird ganz normaler R-code geschrieben

![](figure/NotebooksBasicEx.PNG)


## Python Code integrieren

- Ebenso lässt sich [Python code implementieren](https://support.rstudio.com/hc/en-us/articles/233066128-Do-Notebooks-support-other-languages-)


![](figure/pythonCode.PNG)


```python
import sys
print(sys.version)
```

```
## 3.5.2 (v3.5.2:4def2a2901a5, Jun 25 2016, 22:01:18) [MSC v.1900 32 bit (Intel)]
```

## [LaTeX Code integieren](https://blog.rstudio.org/2016/10/05/r-notebooks/)

- LaTeX code wird mit zwei Dollarzeichen gekennzeichnet

![](figure/LaTexCode.PNG)


## Notebook veröffentlichen I

![](figure/PublishNotebook.PNG)

## Notebook veröffentlichen II

![](figure/PublishNotebook2.PNG)

# Andere Notebooks

## [Jupyter Notebook](http://jupyter.readthedocs.io/en/latest/install.html)

![](http://jupyter.readthedocs.io/en/latest/_static/_images/jupyter.svg)

- Anaconda installieren
- folgenden Befehl in die Eingabeaufforderung eingeben
- Diese findet man bei windows wenn man cmd in Suche eingibt.

```
jupyter notebook
```
## Start Jupyter Notebook

![](figure/JupyterEx.PNG)

## Beispiel Eingabe Code

![](figure/JupyterNotebookQmap.PNG)


# Beaker Notebook

## Beaker Notebook

- Auch bei Beaker kann man R-code einbauen

![](figure/Beaker.PNG)

## Beaker starten

- [Beaker installieren](http://beakernotebook.com/getting-started) ...
- ... und mit `beaker.command.bat` starten

![](figure/BeakerEx.PNG)


## Links

- [knitr Language Engines](http://rmarkdown.rstudio.com/authoring_knitr_engines.html)

- [More engines](https://yihui.name/knitr/demo/engines/)

- [Andere Programmiersprachen können eingebunden werden](http://rmarkdown.rstudio.com/authoring_knitr_engines.html)

- [Video - Einführung in Rnotebook](https://www.rstudio.com/resources/webinars/introducing-notebooks-with-r-markdown/)

- [R Notebooks](http://rmarkdown.rstudio.com/r_notebooks.html)

- [IPython vs knitr, or Python vs R](https://yihui.name/en/2012/11/ipython-vs-knitr/)

- [Datacamp Tutorial - Jupyter Notebook](https://www.datacamp.com/community/tutorials/tutorial-jupyter-notebook#gs.kZqvIvI)

- [Better interactive data science with Beaker and Rodeo](https://blog.dominodatalab.com/interactive-data-science/)

- [Knit directly to jupyter notebooks from RStudio](https://www.r-bloggers.com/knit-directly-to-jupyter-notebooks-from-rstudio/)

- [Python-Markdown](https://pythonhosted.org/Markdown/)

- [Podcast](https://talkpython.fm/episodes/show/96/exploring-awesome-python)


## Aufgabe: Bearbeiten Sie ein Notebook weiter

