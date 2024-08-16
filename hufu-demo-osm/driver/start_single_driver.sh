start() {
  dataset=$1
  data=$2
  silo=$3
    nohup java -Dlog4j.configurationFile=log4j2.xml -DlogFileName=${dataset}_${data}_${silo} -jar -Xms4g -Xmx10g ../../release/bin/postgresql_server.jar -c ${dataset}_${data}/config${silo}.json > /dev/null 2>&1 &
    echo $! >> pid
}

start $1 $2 $3
