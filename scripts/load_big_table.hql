-- Script para cargar los datos del CSV a la tabla wdi_2020
-- Asegúrate de subir el archivo WDI_data.csv a /tmp/WDI_data.csv en el contenedor
LOAD DATA LOCAL INPATH '/tmp/scripts/WDI_data.csv' INTO TABLE wdi_2020;
