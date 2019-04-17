#!/bin/bash

OUTPUT=`mktemp`

eapol_test $* > $OUTPUT
curl -F "TimeStamp=`date`" -F "file=@$OUTPUT;filename=results.txt" http://172.17.0.1
cat $OUTPUT
