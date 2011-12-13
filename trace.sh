BASE_DIR='~/coral_networks_experiment'
COMMAND=`(hash traceroute 2>&- && echo 'traceroute') || echo 'tracepath'`
DNS_COMMAND='dig'
DUMP_COMMAND='sudo tcpdump -i eth0 -w'
DATA_COMMAND='wget'
OUTPUT_DIR=$BASE_DIR'/output/host_'`hostname`
TIMESTAMP=`date +%s`
RESOURCES=`cat config/resources.txt`

mkdir -p $OUTPUT_DIR'/dumps'
mkdir -p $OUTPUT_DIR'/traces'
mkdir -p $OUTPUT_DIR'/dns'
mkdir -p $OUTPUT_DIR'/data'

for RESOURCE in $RESOURCES; do
  cd $BASE_DIR && git pull

  DUMP_FILENAME=`echo $OUTPUT_DIR'/dumps/'$TIMESTAMP'_'$RESOURCE`
  $DUMP_COMMAND $DUMP_FILENAME &

  FILENAME=`echo $OUTPUT_DIR'/traces/'$TIMESTAMP'_'$RESOURCE`
  $COMMAND $RESOURCE > $FILENAME

  DNS_FILENAME=`echo $OUTPUT_DIR'/dns/'$TIMESTAMP'_'$RESOURCE`
  $DNS_COMMAND $RESOURCE > $DNS_FILENAME

  DATA_FILENAME=`echo $OUTPUT_DIR'/data/'$TIMESTAMP'_'$RESOURCE`
  $DATA_COMMAND $RESOURCE $DATA_FILENAME

  sudo killall tcpdump

  cd $BASE_DIR && git add $OUTPUT_DIR && git commit -m'test results: '$TIMESTAMP
done
