-- Databricks notebook source
-- DBTITLE 1,Exercício 01
-- selecione todos os clientes paulistanos
SELECT *
FROM silver_olist.cliente
WHERE descCidade='sao paulo'
LIMIT 30

-- COMMAND ----------

-- DBTITLE 1,Exercício 02
-- selecione todos os clientes paulistas
SELECT *
FROM silver_olist.cliente
WHERE descUF='SP'
LIMIT 30

-- COMMAND ----------

-- DBTITLE 1,Exercício 03
-- selecione todos os vendedores cariocas e paulistas
SELECT *
FROM silver_olist.cliente
WHERE descCidade='rio de janeiro'
OR descUF = 'SP'
LIMIT 30

-- COMMAND ----------

-- DBTITLE 1,Exercício 04
-- selecione todos os produtos de perfumaria e bebes com altura maior que 5cm
SELECT *
FROM silver_olist.produto
WHERE descCategoria IN ('perfumaria','bebes')
AND vlAlturaCm > 5
LIMIT 50

-- COMMAND ----------


