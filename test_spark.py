import pyspark
# from pyspark.sql import SparkSession
# spark = SparkSession.builder.appName("test_spark").getOrCreate()
# print(spark)

from pyspark import SparkContext

sc = SparkContext()
print(sc.getConf().getAll())
my_rdd = sc.parallelize(['Sebastian', 'Srikanth', 'Kumar'])
print("type of my rdd = {}".format(type(my_rdd)))
print('rdd collect = {}'.format(my_rdd.collect()))
print(my_rdd.countByValue())

# foreach
# It takes each element and applies function to each element and does not return any value
print(sc.parallelize([1,2,3,4,5]).foreach(lambda x: x+1))
print(sc.parallelize([1,2,3,4,5]).map(lambda x: x+1))
print(sc.parallelize([1,2,3,4,5]).map(lambda x: x+1).collect())

def printAll(x):
    print(x)
print(sc.parallelize([1,2,3,4,5]).foreach(printAll))
# When do we use foreach and map
# foreach is a action but always return NONE/Undefined datatype -> example: running a command to save to database
# map is afunction that returns the transformed RDD after applying the actions defined in map function

# GLOM
# we can partition the rdd into tuples
