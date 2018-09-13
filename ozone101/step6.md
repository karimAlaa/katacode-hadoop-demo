Buckets contain the binary keys.

## Task

Connect to the datanode (`docker-compose exec datanode bash`) if you are not there.

Upload a file to the bucket.

`ozone oz key put --replication 1 /hive/bb1/LICENSE.txt /opt/hadoop/LICENSE.txt`{{execute}}

`ozone oz key list /hive/bb1/`{{execute}}
