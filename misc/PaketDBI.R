library(DBI)

# Connect to a public database that I'm running on Google's 
# cloud SQL service. It contains a copy of the data in the
# datasets package.
con <-  dbConnect(RMySQL::MySQL(), 
                  username = "public", 
                  password = "F60RUsyiG579PeKdCH",
                  host = "173.194.227.144", 
                  port = 3306, 
                  dbname = "datasets"
)