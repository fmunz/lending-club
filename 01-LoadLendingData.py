# Databricks notebook source
d_path="/databricks-datasets/samples/lending_club/parquet/"
l_data = spark.read.parquet(d_path)

# COMMAND ----------

display(l_data.printSchema())

# COMMAND ----------

l_data.write.mode("overwrite").saveAsTable("loans")

# COMMAND ----------

# MAGIC %sql 
# MAGIC select count(*) from loans

# COMMAND ----------


