
Volume is the higher level abstraction of the Ozone object store. It contains the buckets.

Volumes have quota and associated to a user.

## Task

Let's login to the datanode:

`docker-compose exec datanode bash`{{execute}}

Now you can create the first volume with the oz command

`ozone oz -createVolume http://localhost:9880/hive -user bilbo -quota 100TB -root`{{execute}}

Check if you have the volume:

`ozone oz -listVolume http://localhost:9880/hive -user bilbo`{{execute}}
