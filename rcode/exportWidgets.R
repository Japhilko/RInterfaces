# https://github.com/timelyportfolio/exportwidget
devtools::install_github("timelyportfolio/exportwidget")

install.packages("pipeR")

library(pipeR)
library(htmltools)
library(DiagrammeR)
library(exportwidget)

tagList(
  grViz(" digraph { a->b; b->c; c->a; }")
  ,export_widget( )
) %>>% html_print( viewer = utils::browseURL ) 
