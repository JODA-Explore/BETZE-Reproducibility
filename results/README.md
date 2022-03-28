# Results
In this directory we collected all our test results.
The general structure for each benchmark is the following:

- Experiment
  - Category
    - Seed
      - run.log: Output of the ./benchmark_queries.sh script with overall runtimes
      - queries.joda: JODA query file
      - joda.log: Log ot the JODA container
      - (mongo.js: MongoDB query file)
      - (mongo.log: Log of the MongoDB Container)
      - (postgres.sql: PostgreSQL query file)
      - (psql.log: Log of the PostgreSQL container)
      - (jq.sh: Script to execute JQ commands)
      - (jq.log: Log of the runs )

The naming convention of the experiments are the same as the README in the parent directory uses.

## Special cases
For datasets and threads experiments, we evaluated JODA with memory eviction turned on separately.
These experiments can be found in `joda_nostore`.

## Aggregation
To aggregate our results, we used a custom python script `analyze.py` which is included in this directory.
Per default it calculates the average runtime of every session for every system.
It also implements functions to calculate a specific percentile and aggregate each query separately.
It can be used by calling `python analyze.py <result-dirs>`.
For example 
```
python analyze.py user_execution/novice user_execution/intermediate user_execution/expert 
```
which will aggregate all runs in these directories and show the results.