# Rcode für alle Teile erzeugen
# Mon Apr 17 14:04:14 2017
# Jan-Philipp Kolb

setwd("D:/Eigene Dateien/Dokumente/GitHub/RInterfaces/rcode")

library(knitr)

purl("../slides/Intro.Rmd")

purl("../slides/Datenimport.Rmd")
purl("../slides/Datenexport.Rmd")
purl("../slides/Rexcel.Rmd")

purl("../slides/R2word.Rmd")
purl("../slides/R2pdf.Rmd")
purl("../slides/Rmarkdown.Rmd")
purl("../slides/Notebooks.Rmd")
purl("../slides/leaflet.Rmd")
purl("../slides/DataTables.Rmd")
purl("../slides/D3.Rmd")
purl("../slides/plotly.Rmd")
purl("../slides/visNetwork.Rmd")
purl("../slides/mermaid.Rmd")
purl("../slides/rapis.Rmd")
purl("../slides/rvest.Rmd")
purl("../slides/Webscraping.Rmd")
purl("../slides/ScrapingWikipedia.Rmd")
purl("../slides/Versionsverwaltung.Rmd")
purl("../slides/Rgit.Rmd")
purl("../slides/shiny.Rmd")
purl("../slides/rcpp.md")
purl("../slides/parallel.Rmd")
purl("../slides/Datenbanken.Rmd")
purl("../slides/dplyr.Rmd")
purl("../slides/RPostgreSQL.Rmd")
purl("../slides/Rmongodb.Rmd")

## Install Packages

install.packages("dygraphs")
install.packages("networkD3")

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