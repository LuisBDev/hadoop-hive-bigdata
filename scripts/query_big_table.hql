-- Ejemplos de queries sobre la tabla big_table

-- Contar registros
SELECT COUNT(*) FROM big_table;

-- Obtener los primeros 10 registros
SELECT * FROM big_table LIMIT 10;

-- Consulta de agregación de ejemplo
SELECT col1, COUNT(*) as total
FROM big_table
GROUP BY col1
ORDER BY total DESC
LIMIT 10;
