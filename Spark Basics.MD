Hadoop Cluster:
 A Hadoop cluster (its originally Java based) consists of three components:
 1. Storage (HDFS)
 2. Compute Engine (MapReduce) 
 3. Resource Manager (YARN - Yet Another Resource Negotiator) -> Integrated at Hadoop version 2

------------------
How Hadoop works:
    Master - Slave

    Master - Runs Resource Manager
    Slave - Runs Node Manager

    Each task come to Master and Master assigns task to Slave
------------------

Since MapReduce (compute engine) has some drawbacks so Spark Cluster has been developed

Needs another package to help Hadoop
ex:
    For streaming we need to use Kafka
    For scheduling we need Oozie
    For machine learning we need some libraries
    And all are Java supported
    So Apache Spark has been developed to connect all these

Spark Cluster:
Similarly to Hadoop Cluster Spark cluster also has three components:
    1. Storage ( HDFS/ S3/ Any Storage can be connected )
    2. Compute Engine ( Spark )
    3. Resource Manager (Mesos/Yarn/Kubernetes)

Spark is available in Python, Java, Sacala, R


Hadoop MapReduce vs Spark engine
1. Hadoop supports only bacth processing and not realtime processing but Spark suports both batch processing and realtime processing
2. MapReduce is disk Oriented but Spark is memory(RAM) oriented
3. MapReduce is cheaper but Spark is Cost
4. MapReduce is Java based Spark can be written in 4 languages
5. Both are Fault tolerance
5. MR has no inbuilt supprot to run SQL, ML, Realtime but spark has
6. If is few GB's use MR else use Spark engine


Pyspark vs Pandas:
1. Pyspark operation runs in parallel on different nodes in cluster, where as pandas run only in 1 core of CPU
2. Operations are Lazy evaluation, in pandas we get result as soon as operations applied ( pd.reaad_csv() ).
3. In pyspark RDD is immutable we cannot change but when we apply some transformation it creates new RDD, due to this immutable it can run in parallel and created new RDD's, Pandas df can be mutable
4. Pyspark access to dataframe is slower but process is fast since dataframe is stored in multiple nodes. pandas access to df is faster but limited to available memory, but processing is slow.
5. Setting up cluster is required in case of Pyspark, Pandas doesn't require that


PySpark: python + spark

Python API to support Apache Spark

Spark is a computing engine written in Scala 
Py4j - convert java to python and vice versa

In-memory computations:
1.performs operations in RAM
2.Data is stored in RAM  at each step after reading from hard disk- read/write is faster(100 times faster than map reduce)
3. Decreased Latency
4. Stores Intermediate results in distributed memory(RAM)

Lazy execution:
1. Not read data into RAM unless applying operations
2. Syntax will be checked
3. Action and transformation

Transformation - create RDD - not perform opn immediately - creates DAG(Directed Acyclic Graph) till u apply any action
Action - apply transformations on RDD give values - wide and narrow transformation

Parallel processing - distributing work loads
Hadoop = batch processing
Spark -both batch and  real time processing
Spark can be written in 4 languages - Python, R,Java and Scala, inbuilt libraries for Sql,ML - data analytics - large dataset and for performing manipulations
MapReduce - Pure Java and doesn't support SQL - data processing
Fault tolerance


Fundamental of Pyspark/spark - RDD:
Resilient - fault tolerant - created copy in memory - will not destroy original copy - EACh RDD remembers how is got created
Distributed - Data is distributed in multiple nodes in cluster
Dataset - collection of partitioned data with values
Immutable
Two ops - transformation and action

Can. Create multiple RDD's in same spark cluster

Dataset is stored into RDD
Partition of RDD is done by Spark - fundamental unit of parallelism

Sparkcontext - gateway for spark env, creates connection to spark cluster - create RDD
Sparksession - dataframe, SQL
Sc = sparkContext("local","First App")
Names = Sc.parallelise(["column_names"]) - parallelise data is distributed across nodes
names.collect() - action - details displayed right away - all data would come to RAM\
Sc.textfile("emp.txt")
Reduce - aggregation 
RDD - no schema - java scala python R
RDD, dataset, dataframe -Spark API,Data Storage, -  
Dataset -  spark sql df - java scala
DF and DS are faster than RDD
Sql like queries are not supported in RDD
Dataframe - sparksession





As Spark is written in Scala so in order to support Python with Spark, Spark Community released a tool, which we call PySpark.
PySpark is a Spark library written in Python to run Python application using Apache Spark capabilities, using PySpark we can run applications parallelly on the distributed cluster (multiple nodes).
Spark runs operations on billions and trillions of data on distributed clusters 100 times faster than the traditional python applications.


 PySpark DataFrame is mostly similar to Pandas DataFrame with exception PySpark DataFrames are distributed in the cluster (meaning the data in DataFrame's are stored in different machines in a cluster) and any operations in PySpark executes in parallel on all machines whereas Panda Dataframe stores and operates on a single machine.

spark = SparkSession.builder.appName('SparkByExamples.com').getOrCreate()
rdd = spark.sparkContext.parallelize(data)


columns = ["language","users_count"]
dfFromRDD1 = rdd.toDF(columns)
dfFromRDD1.printSchema()

dfFromRDD2 = spark.createDataFrame(rdd).toDF(*columns)

df2 = spark.read.csv("/src/resources/file.csv")

import pyspark
from pyspark.sql import SparkSession
from pyspark.sql.functions import col, lit
from pyspark.sql.types import StructType, StructField, StringType,IntegerType


empDF.join(deptDF,empDF.emp_dept_id ==  deptDF.dept_id,"inner") \
     .show(truncate=False)


empDF.createOrReplaceTempView("EMP")
deptDF.createOrReplaceTempView("DEPT")

joinDF = spark.sql("select * from EMP e, DEPT d where e.emp_dept_id == d.dept_id") \
  .show(truncate=False)

joinDF2 = spark.sql("select * from EMP e INNER JOIN DEPT d ON e.emp_dept_id == d.dept_id") \
  .show(truncate=False)



