Buckets contain the binary keys.

## Task

Connect to the datanode (`docker-compose exec datanode bash`) if you are not there.

Upload a file to the bucket.

`ozone sh key put --replication ONE /hive/bb1/LICENSE.txt /opt/hadoop/LICENSE.txt`{{execute}}

`ozone sh key list /hive/bb1/`{{execute}}
