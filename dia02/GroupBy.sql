-- Databricks notebook source
SELECT 
    descUF,
    COUNT(*) AS contagem_clientes
FROM silver_olist.cliente
GROUP BY descUF
ORDER BY contagem_clientes DESC

-- COMMAND ----------

SELECT 
    descUF,
    COUNT(DISTINCT idClienteUnico) AS contagem_clientes_unicos
FROM silver_olist.cliente
GROUP BY descUF
ORDER BY contagem_clientes_unicos DESC

-- COMMAND ----------


