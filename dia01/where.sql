-- Databricks notebook source
SELECT *
FROM silver_olist.pedido
WHERE descSituacao IN('shipped','canceled')
AND YEAR(dtPedido) = '2018'
LIMIT 100

-- COMMAND ----------

SELECT *,
      DATEDIFF(dtEstimativaEntrega,dtAprovado) AS DiffDataAprovadoEntrega
FROM silver_olist.pedido
WHERE descSituacao IN('shipped','canceled')
AND YEAR(dtPedido) = '2018'
AND DATEDIFF(dtEstimativaEntrega,dtAprovado) > 30

-- COMMAND ----------


