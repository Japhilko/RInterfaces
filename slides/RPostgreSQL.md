# RPostgreSQL
Jan-Philipp Kolb  
27 Januar 2017  



## PostgreSQL

![PostgreSQL](https://www.runabove.com/images/new/2015/postgresql_1.png)

- [PostgreSQL](http://wiki.openstreetmap.org/wiki/PostgreSQL)


## PostgreSQL installieren

- [Installation Windows](https://www.postgresql.org/download/windows/)
- [Installation Linux](http://postgres.de/install.html)

## PG admin installieren

- [PGadmin](https://www.pgadmin.org/)

## Wie bekomme ich Daten in die Datenbank


```r
# install.packages("RPostgreSQL")
library("RPostgreSQL")
```


## Geodaten in die Datenbank migrieren

- [Nutzung von osm2pgsql](http://www.volkerschatz.com/net/osm/osm2pgsql-usage.html)


```bash
sudo -u postgres createuser Japhilko
sudo -u postgres createdb -E UTF8 -O Japhilko offlgeoc
```

Die postgis Erweiterung muss für die Datenbank installiert werden:

```shell
CREATE EXTENSION postgis;
```


```
osm2pgsql -s -U postgres -d offlgeoc /home/kolb/Forschung/osmData/data/saarland-latest.osm.pbf 
```

## Datenbank für Geocoding


```bash
sudo -u postgres createdb -E UTF8 -O Japhilko offlgeocRLP
```

```shell
CREATE EXTENSION postgis;
```

```
osm2pgsql -s -U postgres -d offlgeocRLP -o gazetteer /home/kolb/Forschung/osmData/data/rheinland-pfalz-latest.osm.pbf 
```



## [PostgreSQL and Leaflet](https://www.r-bloggers.com/using-postgresql-and-shiny-with-a-dynamic-leaflet-map-monitoring-trash-cans/)


```r
install.packages("plot3D")
```




```r
library(plot3D)
library(RPostgreSQL)
```

## Links

- [osm2pgsql
](https://github.com/petewarden/osm2pgsql/tree/master/gazetteer)

- Andrew Whitby - [Roll-your-own geocoding with OpenStreetMap Nominatim on Amazon EC2](https://andrewwhitby.com/2014/12/18/nominatim-on-ec2/)

- [OpenStreetMap Nominatim Server for Geocoding](http://koo.fi/blog/2015/03/19/openstreetmap-nominatim-server-for-geocoding/#Database_users)

- [Getting Started With PostGIS](http://www.bostongis.com/PrinterFriendly.aspx?content_name=postgis_tut01)

- [PostGIS geocode](http://postgis.net/docs/Geocode.html)

- [Nominatim installation](http://wiki.openstreetmap.org/wiki/Nominatim/Installation)

