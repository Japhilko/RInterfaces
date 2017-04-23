# Rcode für alle Teile erzeugen
# Mon Apr 17 14:04:14 2017
# Jan-Philipp Kolb

setwd("D:/Eigene Dateien/Dokumente/GitHub/RInterfaces/slides")

library(knitr)

purl("Datenimport.Rmd")
purl("Datenexport.Rmd")
purl("Rexcel.Rmd")
purl("rapis.Rmd")

## Install Packages

install.packages("dygraphs")

## Citations

citation("devtools")

citation("foreign")
citation("dplyr")
citation("ggplot2")
citation("ggvis")
citation("googleVis")
citation("tabplotd3")
citation("d3Network")
citation("Rook")
citation("dygraphs")

citation("RMySQL")