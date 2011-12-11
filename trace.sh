#COMMAND='tracepath'
COMMAND='traceroute'
OUTPUT_DIR='output'
mkdir -p $OUTPUT_DIR
TIMESTAMP=`date +%s`
RESOURCES=`cat config/resources.txt`

for RESOURCE in $RESOURCES; do
  FILENAME=`echo $OUTPUT_DIR'/'$TIMESTAMP'_'$RESOURCE`
  $COMMAND $RESOURCE > $FILENAME
done
