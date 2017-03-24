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



## Das Arbeiten mit Geodaten in PGsql

```
CREATE EXTENSION postgis;
```

## Geodaten in die Datenbank migrieren


```bash
sudo -u postgres createuser Japhilko
sudo -u postgres createdb -E UTF8 -O Japhilko offlgeoc
```


```bash
sudo -u postgres psql -d offlgeoc -f /usr/share/postgresql/9.5/contrib/postgis-2.2/postgis.sql
```

Alternativ kann der SQL Befehl auch in PostgreSQL aufgerufen werden:

```shell
CREATE EXTENSION postgis;
```


```bash
sudo -u postgres psql -d gis -c "ALTER TABLE spatial_ref_sys OWNER TO <username>;" 
```



```
osm2pgsql -c -d BWgis -U kolbjp -H localhost -S D:\Daten\Daten\GeoDaten\default.style D:\Daten\Daten\GeoDaten\baden-wuerttemberg-latest.osm.pbf
```

```
osm2pgsql -c -d osmgeoc -U postgres -H localhost /home/kolb/Forschung/osmData/data/saarland-latest.osm.pbf
```

- Wenn man folgende Fehlermeldung bekommt:

```
Osm2pgsql failed due to ERROR: Error: Connection to database failed: fe_sendauth: no password supplied
```

- [Nutzung von osm2pgsql](http://www.volkerschatz.com/net/osm/osm2pgsql-usage.html)
## [PostgreSQL and Leaflet](https://www.r-bloggers.com/using-postgresql-and-shiny-with-a-dynamic-leaflet-map-monitoring-trash-cans/)


```r
install.packages("plot3D")
```




```r
library(plot3D)
library(RPostgreSQL)
```



