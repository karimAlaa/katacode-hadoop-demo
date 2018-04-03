Buckets contain the binary keys.

## Task

Connect to the datanode (`docker-compose exec datanode bash`) if you are not there.

Upload a file to the bucket.

`ozone oz -putKey  http://localhost:9880/hive/bb1/LICENSE.txt  -file /opt/hadoop/LICENSE.txt`{{execute}}

`ozone oz -listKey http://localhost:9880/hive/bb1/`{{execute}}
