
Volume is the higher level abstraction of the Ozone object store. It contains the buckets.

Volumes have quota and associated to a user.

## Task

Let's login to the datanode:

`docker-compose exec datanode bash`{{execute}}

Now you can create the first volume with the oz command

`ozone sh volume create /hive --user hadoop --quota 100TB --root`{{execute}}

Check if you have the volume:

`ozone sh volume list --user hadoop`{{execute}}
