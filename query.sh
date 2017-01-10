qfile=$1
#engine=`grep "hive.execution.engine=mr" engines/hive/conf/engineSettings.sql|grep -v "-"`
#if [ "$engine" != "" ];then
   ################  q05,20,25,26,28 use spark ml lib so we need a spark package built with -Phive  ##########
#   echo "backend engine of hive is mr"
#   export SPARK_HOME=/home/tmp/BB_sparksql/spark-2.1.0-bin-aes-had2.7.1
#else
# export SPARK_HOME=/home/oss/BB_HOS/spark-2.0.0-bin-hadoop2-without-hive
#fi
./bin/bigBench runQuery -m 7 -q $qfile -U >runQuery.txt 2>&1
