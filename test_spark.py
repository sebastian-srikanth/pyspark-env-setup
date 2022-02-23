import pyspark
from pyspark.sql import SparkSession
spark = SparkSession.builder.appName("test_spark").getOrCreate()
print(spark)
