-- Script para crear la tabla wdi_2020 en Hive
CREATE TABLE IF NOT EXISTS wdi_2020 (
    CountryName STRING,
    CountryCode STRING,
    IndicatorName STRING,
    IndicatorCode STRING,
    Year INT,
    Value DOUBLE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
