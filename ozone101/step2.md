Now, you have a running Ozone cluster.

## Task

Check running containers:

`docker-compose ps`{{execute}}

You can see the following components:

 Ozone Manager(OM)_ takes care of the Ozone's namespace.
 All ozone entities like volumes, buckets and keys are managed by OM
 In Short, OM is the metadata manager for Ozone.
 OM talks to blockManager(SCM) to get blocks and passes it on to the Ozone
 client.  Ozone client writes data to these blocks.
 OM will eventually be replicated via Apache Ratis for High Availability.

 _Storage Container Manager (SCM)_ is the block and cluster manager for Ozone.
 SCM along with data nodes offer a service called 'containers'.
 A container is a group unrelated of blocks that are managed together
 as a single entity.

_Datanode_ could store all the binary data for the SCM similar to the HDFS datanode.
