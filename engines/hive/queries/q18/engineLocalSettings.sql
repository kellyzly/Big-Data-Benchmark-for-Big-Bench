set mapreduce.input.fileinputformat.split.maxsize=33554432;
set hive.exec.reducers.bytes.per.reducer=512000000;
set hive.auto.convert.sortmerge.join=true;
set hive.mapjoin.smalltable.filesize=1000000000;
set hive.auto.convert.join.noconditionaltask.size=1000000000;

set hive.strict.checks.cartesian.product=false;

set spark.app.name="orc_q18_10g_hive.merge.sparkfiles.true";
set hive.merge.sparkfiles=true;
