library(tidyverse, help, pos = 2, lib.loc = NULL)
library(DBI)
library(RPostgres)
library(sf)

dvr <- RPostgres::Postgres()
db <- 'diana'  ##Nombre de la BBDD
host_db <- 'localhost'
db_port <- '5432' 
db_user <- 'usuario'  ##Tu usuario
db_password <- 'contraseña' ##Tu contraseña 

# 3.0 Conexión
con <- dbConnect(dvr, dbname = db, host=host_db, port=db_port,
                 user=db_user, password=db_password)  