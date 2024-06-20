dataset=$1
sql=$2
query=$3
repeatTimes=4
java -jar -Dlog4j.configurationFile=log4j2.xml -Xms4g -Xmx10g ../../release/bin/evaluation.jar -m ${dataset}/model.json -s ${sql} -t ${query} -r ${repeatTimes}