-- Databricks notebook source
SELECT 
  CASE 
    WHEN annual_inc < 25000 THEN '000K-025K'
    WHEN annual_inc < 50000 THEN '025K-050K'
    WHEN annual_inc < 75000 THEN '050K-075K'
    WHEN annual_inc < 100000 THEN '075K-100K'
    WHEN annual_inc < 125000 THEN '100K-125K'
    WHEN annual_inc < 150000 THEN '125K-150K'
    ELSE '150K+' 
  END AS income_group, 
  COUNT(*) AS num_loans
FROM loans 
GROUP BY income_group ORDER BY income_group ASC;

-- COMMAND ----------


