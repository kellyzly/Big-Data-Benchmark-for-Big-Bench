set mapreduce.input.fileinputformat.split.maxsize=33554432;
set hive.exec.reducers.bytes.per.reducer=134217728;
set hive.exec.parallel=true;
set hive.mapjoin.smalltable.filesize=1000000000;
set hive.auto.convert.join.noconditionaltask.size=1000000000;
set spark.app.name=q23.sql;
