CREATE DATABASE IF NOT EXISTS demo;
USE demo;

-- Tabla interna en formato ORC
CREATE TABLE employees_orc (
  id INT,
  name STRING,
  salary FLOAT,
  department STRING
)
STORED AS ORC;

-- Tabla interna en formato Parquet
CREATE TABLE employees_parquet (
  id INT,
  name STRING,
  salary FLOAT,
  department STRING
)
STORED AS PARQUET;
