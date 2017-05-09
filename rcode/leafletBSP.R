library(leaflet)
?leaflet
library(ggmap)

geocode("Mannheim B,2,1")
m = leaflet() %>% addTiles()
m = m %>% setView(8.462844, 49.48569, 
                  zoom = 17)
m


install.packages("shinyjs")
c("#68228B", "#CD950C", "#8EE5EE")

