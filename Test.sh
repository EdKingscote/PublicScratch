#!/bin/bash

OUTPUT=`mktemp`

eapol_test $* | tee $OUTPUT
curl -F "TimeStamp=`date`" -F "file=@$OUTPUT;filename=results.txt" http://172.17.0.1 
rm $OUTPUT

