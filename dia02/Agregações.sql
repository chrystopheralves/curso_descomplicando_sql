-- Databricks notebook source
--WHEN = filtro
--WHERE = criar coluna

-- COMMAND ----------

SELECT COUNT(*) AS NrLinhasNaoNulas, --linhas não nulas
      COUNT(idCliente) AS NrClientesIDNaoNulo, --ids de clientes não nulos
      COUNT(DISTINCT idCliente) AS NrClientesIDDistintos --ids de clientes distintos
FROM silver_olist.cliente
LIMIT 20

-- COMMAND ----------

SELECT COUNT(*) AS NrLinhasNaoNulas, --linhas não nulas
      COUNT(idCliente) AS NrClientesIDNaoNulo, --ids de clientes não nulos
      COUNT(DISTINCT idCliente) AS NrClientesIDDistintos, --ids de clientes distintos
      COUNT(DISTINCT idClienteUnico) AS NrClientesIDUnicoDistintos --ids de clientes distintos
FROM silver_olist.cliente
LIMIT 20

-- COMMAND ----------

SELECT 
    COUNT(*) AS qtd_linhas,
    COUNT(DISTINCT idCliente) AS qtd_clientes,
    COUNT (DISTINCT idClienteUnico) AS qtd_clientes_unicos
    
FROM silver_olist.cliente
WHERE descCidade IN ('presidente prudente','curitiba')

-- COMMAND ----------

--pesquisar sobre a função "CAST"
SELECT
    ROUND(AVG(vlPreco),2) AS preco_medio_produtos,
    
    INT(PERCENTILE(vlPreco,0.5)) AS preco_mediano_produtos,
    
    MAX(vlPreco) AS preco_max_produtos,
    AVG(vlFrete) AS preco_medio_frete,
    MIN(vlFrete) AS preco_min_frete,
    MAX(vlFrete) AS preco_min_frete
FROM silver_olist.item_pedido
LIMIT 50

-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------


