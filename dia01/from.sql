-- Databricks notebook source
SELECT *
FROM silver_olist.pedido

--leia-se: selecione tudo da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
       descSituacao
FROM silver_olist.pedido
LIMIT 10

-- COMMAND ----------

SELECT *,
      DATEDIFF(dtEstimativaEntrega,dtEntregue) AS qtDiasPromessaEntrega
FROM silver_olist.pedido
LIMIT 4

-- COMMAND ----------


