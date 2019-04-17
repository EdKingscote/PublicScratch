#!/bin/bash

eapol_test $* | tee (cat -n) | curl -F "TimeStamp=`date`" -F "file=@-;filename=results.txt" http://172.17.0.1
