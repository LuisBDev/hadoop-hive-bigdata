-- Script para crear la tabla big_table en Hive
-- Ajusta los tipos de datos según el CSV que descargues de Kaggle
CREATE TABLE IF NOT EXISTS big_table (
    id BIGINT,
    col1 STRING,
    col2 STRING,
    col3 STRING,
    col4 STRING,
    col5 STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
