
Now, you can create one or more buckets to the volume.

## Task

Connect to the datanode (`docker-compose exec datanode bash`) if you are not there.

Create the bucket with the ozone command line interface.

`ozone sh bucket create /hive/bb1`{{execute}}

And list the existing buckets in a volume:

`ozone sh bucket list /hive`{{execute}}
