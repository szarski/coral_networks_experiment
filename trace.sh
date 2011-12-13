COMMAND=`(hash traceroute 2>&- && echo 'traceroute') || echo 'tracepath'`
DNS_COMMAND='dig'
DUMP_COMMAND='sudo tcpdump -i eth0 -w'
OUTPUT_DIR='output'
TIMESTAMP=`date +%s`
RESOURCES=`cat config/resources.txt`

mkdir -p $OUTPUT_DIR'/dumps'
mkdir -p $OUTPUT_DIR'/traces'
mkdir -p $OUTPUT_DIR'/dns'

for RESOURCE in $RESOURCES; do
  DUMP_FILENAME=`echo $OUTPUT_DIR'/dumps/'$TIMESTAMP'_'$RESOURCE`
  $DUMP_COMMAND $DUMP_FILENAME &

  FILENAME=`echo $OUTPUT_DIR'/traces/'$TIMESTAMP'_'$RESOURCE`
  $COMMAND $RESOURCE > $FILENAME

  DNS_FILENAME=`echo $OUTPUT_DIR'/dns/'$TIMESTAMP'_'$RESOURCE`
  $DNS_COMMAND $RESOURCE > $DNS_FILENAME

  killall $DUMP_COMMAND
done
