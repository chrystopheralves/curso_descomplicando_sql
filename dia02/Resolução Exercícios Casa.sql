-- Databricks notebook source
SELECT *
FROM silver_olist.item_pedido
WHERE idPedidoItem > 1
LIMIT 50


-- COMMAND ----------

-- DBTITLE 1,WHERE - Exercício 6
SELECT *

FROM silver_olist.pedido

  WHERE YEAR(dtPedido) = 2017 
  AND MONTH(dtPedido) = 12
  AND descSituacao = 'delivered'
  AND DATE(dtEstimativaEntrega) < DATE(dtEntregue) -- aqui foi transformado em data para não confundir os atrasos por hora


-- COMMAND ----------

-- DBTITLE 1,WHERE - Exercício 8
SELECT *,
    ROUND((vlPagamento / nrPacelas),2) AS vlParcela
FROM silver_olist.pagamento_pedido
WHERE nrPacelas >= 2
AND (vlPagamento / nrPacelas) < 20
ORDER BY vlParcela ASC

-- COMMAND ----------

-- DBTITLE 1,CASE - Exercício 2
SELECT *,
    ROUND((vlPreco+vlFrete),2) AS vlTotal,
    ROUND(vlFrete/(vlPreco+vlFrete),2) AS pctFrete,
    
    CASE
      WHEN vlFrete/(vlPreco+vlFrete) <= 0.1 THEN '10%'
      WHEN vlFrete/(vlPreco+vlFrete) <= 0.25 THEN '10% a 25%'
      WHEN vlFrete/(vlPreco+vlFrete) <= 0.50 THEN '25% a 50%'
      ELSE '+50%'
      END AS descFretePct
FROM silver_olist.item_pedido
ORDER BY pctFrete DESC
LIMIT 50


-- COMMAND ----------

  
