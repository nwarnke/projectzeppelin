lastMMM=`date -d "-1 month" +%Y%m%d`
month=`date --date "last month" +%m`
year=`date --date "last month" +%Y`
lastday=`cal $month $year|grep [0-9]|tail -1|awk '{print $NF}'`
DATE=$year${month}01
TABLENAME=ede_ops_r1_rpt
hive -hiveconf DATE=$DATE -hiveconf TABLENAME=$TABLENAME -f /upapps/hdp/prftm/scripts/R1_Hive_ALL.hql
