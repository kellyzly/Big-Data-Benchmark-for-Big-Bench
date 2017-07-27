set mapreduce.input.fileinputformat.split.maxsize=33554432;
set hive.exec.reducers.bytes.per.reducer=16777216;
set hive.exec.parallel=true;
set hive.mapjoin.smalltable.filesize=1000000000;
set hive.auto.convert.join.noconditionaltask.size=1000000000;
set spark.app.name="orc_q19_10g_hive.merge.sparkfiles.true";
set hive.merge.sparkfiles=true;
