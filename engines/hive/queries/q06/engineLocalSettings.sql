set mapreduce.input.fileinputformat.split.maxsize=134217728;
set hive.exec.parallel=true;
set hive.mapjoin.smalltable.filesize=1000000000;
set hive.auto.convert.join.noconditionaltask.size=1000000000;
set hive.optimize.ppd=true;
set hive.optimize.ppd.storage=true;
set hive.ppd.recognizetransivity=true;
set hive.optimize.index.filter=true;

set spark.app.name=q06.sql;
