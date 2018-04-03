Now, you have a running Ozone cluster.

## Task

Check running containers:

`docker-compose ps`{{execute}}

You can see the following components:

 _Key Space Manager(KSM)_ takes care of the Ozone's namespace.
 All ozone entities like volumes, buckets and keys are managed by KSM
 In Short, KSM is the metadata manager for Ozone.
 KSM talks to blockManager(SCM) to get blocks and passes it on to the Ozone
 client.  Ozone client writes data to these blocks.
 KSM will eventually be replicated via Apache Ratis for High Availability.<U+2028>

 _Storage Container Manager (SCM)_ is the block and cluster manager for Ozone.
 SCM along with data nodes offer a service called 'containers'.
 A container is a group unrelated of blocks that are managed together
 as a single entity.

_Datanode_ is the traditional HDFS component just with some additional Ozone related plugins. It could store all the binary data for the SCM.

_Namenode_ is the traditional HDFS namenode. Not used directly but datanodes require it.
