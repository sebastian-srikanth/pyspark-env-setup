Snowflake

Huge data warehouse cost is one major factor along with not being an agile cloud data warehouse. In comparison, storage in Snowflake is about $1 a day per terabyte.
 They took the best components of on-prem appliances and combined that with what the cloud brings like elasticity, scalability, and consumption-based pricing.
"In Snowflake, these things are automatically taken care of where in Teradata these are things that need to be managed." -Shiv Girijashankar
Teradata is more dba driven, requiring much more maintaining and time.
Snowflake has even created a solution to helped customers quickly and easily migrate their data
The most remarkable feature of Snowflake is its ability to spin up any number of virtual warehouses
Snowflake is built entirely on a SQL database. It's a columnar-stored relational database

The Snowflake architecture allows storage and compute to scale independently, so customers can use and pay for storage and computation separately.Storage is billed by terabytes stored per month, and computation is billed on a per-second basis.

The database storage layer holds all data loaded into Snowflake, including structured and semistructured data. Snowflake automatically manages all aspects of how the data is stored

The compute layer is made up of virtual warehouses that execute data processing tasks required for queries. Each virtual warehouse (or cluster) can access all the data in the storage layer, then work independently, so the warehouses do not share, or compete for, compute resources.

Snowflake is a data warehouse built on top of the Amazon Web Services or Microsoft Azure cloud infrastructure. There's no hardware or software to select, install, configure, or manage,