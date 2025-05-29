-- Ejemplos de queries sobre la tabla wdi_2020

-- Contar registros totales
SELECT COUNT(*) AS total_registros FROM wdi_2020;

-- Obtener los primeros 10 registros
SELECT * FROM wdi_2020 LIMIT 10;

-- Top 10 indicadores con mayor valor promedio en 2020
SELECT IndicatorName, AVG(Value) as avg_value
FROM wdi_2020
WHERE Year = 2020
GROUP BY IndicatorName
ORDER BY avg_value DESC
LIMIT 10;


