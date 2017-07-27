--set mapreduce.input.fileinputformat.split.maxsize=134217728;
set hive.exec.reducers.bytes.per.reducer=128000000;
--set hive.auto.convert.sortmerge.join=true;
--set hive.mapjoin.smalltable.filesize=1000000000;
--set hive.auto.convert.join.noconditionaltask.size=1000000000;

set spark.app.name=q13.sql;
