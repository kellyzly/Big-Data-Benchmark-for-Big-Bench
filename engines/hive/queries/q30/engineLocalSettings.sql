--set hive.exec.reducers.bytes.per.reducer=64000000;
set hive.exec.reducers.bytes.per.reducer=512000000;
set hive.exec.reducers.max=1000000000;
set hive.mapjoin.smalltable.filesize=1000000000;
set hive.auto.convert.join.noconditionaltask.size=1000000000;
set spark.app.name=q30.sql;
