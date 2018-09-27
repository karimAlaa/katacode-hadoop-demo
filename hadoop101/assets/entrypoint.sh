#!/bin/sh

# Start the ssh server
/etc/init.d/ssh start

if [ -n "$is_namenode" ]; then
  hdfs namenode -format
  ssh -o StrictHostKeyChecking=no -q nn exit
  ssh -o StrictHostKeyChecking=no -q dn1 exit
  ssh -o StrictHostKeyChecking=no -q dn2 exit
  ssh -o StrictHostKeyChecking=no -q 0.0.0.0 exit
  start-dfs.sh
  start-yarn.sh
  hdfs dfs -mkdir -p /user/root/ /user/training/ /user/hadoop/ /tmp/hadoop-training/ /tmp/hadoop-hadoop/ /tmp/hadoop-yarn/ /user/hive/warehouse
  hdfs dfs -chown training:training /user/training/ /tmp/hadoop-training/
  hdfs dfs -chown -R hive:hive /user/hive/
  hdfs dfs -chown hadoop:hadoop /user/hadoop/ /tmp/hadoop-hadoop/
  hdfs dfs -chmod -R 777 /tmp/hadoop-yarn
fi

# Execute the CMD
exec "$@"
