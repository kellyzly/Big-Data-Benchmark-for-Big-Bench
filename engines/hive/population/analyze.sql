--"INTEL CONFIDENTIAL"
--Copyright 2016 Intel Corporation All Rights Reserved.
--
--The source code contained or described herein and all documents related to the source code ("Material") are owned by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted, transmitted, distributed, or disclosed in any way without Intel's prior express written permission.
--
--No license under any patent, copyright, trade secret or other intellectual property right is granted to or conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement, estoppel or otherwise. Any license under such intellectual property rights must be express and approved by Intel in writing.
--use bigbench_100g_parquet;
set hdfsDataPath=${env:BIG_BENCH_HDFS_ABSOLUTE_INIT_DATA_DIR};
set fieldDelimiter=|;
set tableFormat=${env:BIG_BENCH_hive_default_fileformat_source_table};
set temporaryTableSuffix=_temporary;

set customerTableName=customer;
set customerAddressTableName=customer_address;
set customerDemographicsTableName=customer_demographics;
set dateTableName=date_dim;
set householdDemographicsTableName=household_demographics;
set incomeTableName=income_band;
set itemTableName=item;
set promotionTableName=promotion;
set reasonTableName=reason;
set shipModeTableName=ship_mode;
set storeTableName=store;
set timeTableName=time_dim;
set warehouseTableName=warehouse;
set webSiteTableName=web_site;
set webPageTableName=web_page;
set inventoryTableName=inventory;
set storeSalesTableName=store_sales;
set storeReturnsTableName=store_returns;
set webSalesTableName=web_sales;
set webReturnsTableName=web_returns;

set marketPricesTableName=item_marketprices;
set clickstreamsTableName=web_clickstreams;
set reviewsTableName=product_reviews;

-- /Begin HACK create first table differently
-- README! why is the first table not done with CTAS (create table as), like the other tables?
--
-- hack for https://issues.apache.org/jira/browse/HIVE-2419 where CTAS (create table as) is not working for a fresh install where the "warehouse" folder for hive does not exist.
-- The normal create table creates the warehouse folder if its missing.
-- But CTAS does not! create the warehouse folder, thus the "move" operation for data would fail with:
-- "Failed with exception Unable to rename: hdfs://namenode:port/tmp/hive-root/../-ext-000001 hdfs://namenode:port/user/hive/warehouse/<database>/<table>"

analyze table ${hiveconf:customerTableName} compute statistics noscan;
analyze table ${hiveconf:customerAddressTableName} compute statistics noscan;
analyze table ${hiveconf:customerDemographicsTableName} compute statistics noscan;
analyze table ${hiveconf:dateTableName} compute statistics noscan;
analyze table ${hiveconf:householdDemographicsTableName} compute statistics noscan;
analyze table ${hiveconf:incomeTableName} compute statistics noscan;
analyze table ${hiveconf:itemTableName} compute statistics noscan;
analyze table ${hiveconf:promotionTableName} compute statistics noscan;
analyze table ${hiveconf:reasonTableName} compute statistics noscan;
analyze table ${hiveconf:shipModeTableName} compute statistics noscan;
analyze table ${hiveconf:storeTableName} compute statistics noscan;
analyze table ${hiveconf:timeTableName} compute statistics noscan;
analyze table ${hiveconf:warehouseTableName} compute statistics noscan;
analyze table ${hiveconf:webSiteTableName} compute statistics noscan;
analyze table ${hiveconf:webPageTableName} compute statistics noscan;
analyze table ${hiveconf:inventoryTableName} compute statistics noscan;
analyze table ${hiveconf:storeSalesTableName} compute statistics noscan;
analyze table ${hiveconf:storeReturnsTableName} compute statistics noscan;
analyze table ${hiveconf:webSalesTableName} compute statistics noscan;
analyze table ${hiveconf:marketPricesTableName} compute statistics noscan;
analyze table ${hiveconf:clickstreamsTableName} compute statistics noscan;
analyze table ${hiveconf:reviewsTableName} compute statistics noscan;
