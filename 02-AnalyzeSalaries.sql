-- Databricks notebook source
SELECT 
  CASE 
    WHEN annual_inc < 25000 THEN '0-25K'
    WHEN annual_inc < 37500 THEN '25K-37.5K'
    WHEN annual_inc < 50000 THEN '37.5K-50K'
    WHEN annual_inc < 62500 THEN '50K-62.5K'
    WHEN annual_inc < 75000 THEN '62.5K-75K'
    WHEN annual_inc < 87500 THEN '75K-87.5K'
    WHEN annual_inc < 100000 THEN '87.5K-100K'
    WHEN annual_inc < 112500 THEN '100K-112.5K'
    WHEN annual_inc < 125000 THEN '112.5K-125K'
    WHEN annual_inc < 150000 THEN '125K-150K'
    ELSE '150K+' 
  END AS income_group, 
  COUNT(*) AS num_loans
FROM loans 
GROUP BY income_group;

-- COMMAND ----------


