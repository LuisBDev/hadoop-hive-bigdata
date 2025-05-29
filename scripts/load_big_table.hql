-- Script para cargar los datos del CSV a la tabla big_table
-- Asegúrate de subir el archivo big_table.csv a /tmp/big_table.csv en el contenedor
LOAD DATA LOCAL INPATH '/tmp/big_table.csv' INTO TABLE big_table;
