set mapreduce.input.fileinputformat.split.maxsize=536870912;
set hive.exec.reducers.bytes.per.reducer=32000000;
set hive.exec.reducers.max=1000000000;
set hive.optimize.correlation=true;
set hive.mapjoin.smalltable.filesize=1000000000;
set hive.auto.convert.join.noconditionaltask.size=1000000000;
set spark.app.name=q04.sql;
