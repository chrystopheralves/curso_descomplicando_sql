-- Databricks notebook source
SELECT descUF,
    COUNT(idVendedor) AS qtVendedorUF
FROM silver_olist.vendedor
WHERE descUF IN ('SP','MG','ES','RJ')
GROUP BY descUF
HAVING qtVendedorUF >= 100
ORDER BY qtVendedorUF DESC
LIMIT 50
-- HAVING É UM FILTRO DEPOIS DA AGREGAÇÃO
-- HAVING PODE USAR AGREGAÇÃO. EX.:'qtVendedorUF'

-- COMMAND ----------


