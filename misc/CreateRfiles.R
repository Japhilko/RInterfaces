# Rcode für alle Teile erzeugen
# Mon Apr 17 14:04:14 2017
# Jan-Philipp Kolb

setwd("D:/Eigene Dateien/Dokumente/GitHub/RInterfaces/slides")

library(knitr)

purl("Datenimport.Rmd")
purl("Datenexport.Rmd")
purl("Rexcel.Rmd")
