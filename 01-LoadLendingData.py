# Databricks notebook source
d_path="/databricks-datasets/samples/lending_club/parquet/"
l_data = spark.read.parquet(d_path)

# COMMAND ----------

display(l_data.printSchema())

# COMMAND ----------

l_data.write.saveAsTable("loans")
