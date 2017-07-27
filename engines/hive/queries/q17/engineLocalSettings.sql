set mapreduce.input.fileinputformat.split.maxsize=134217728;
set hive.exec.reducers.bytes.per.reducer=128000000;
set hive.auto.convert.sortmerge.join=true;
set hive.exec.parallel=true;
set hive.mapjoin.smalltable.filesize=500000000;
set hive.auto.convert.join.noconditionaltask.size=500000000;
set spark.app.name=q17.sql;
