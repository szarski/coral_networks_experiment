#COMMAND='tracepath'
COMMAND='traceroute'
OUTPUT_DIR='output'
mkdir -p $OUTPUT_DIR
TIMESTAMP=`date +%s`

for RESOURCE in `cat config/resources.txt`; do
  FILENAME=`echo $OUTPUT_DIR'/'$TIMESTAMP'_'$RESOURCE`
  $COMMAND $RESOURCE > $FILENAME
done
