#!/bin/bash

eapol_test $* | tee | curl -F "TimeStamp=`date`" -F "file=@-;filename=results.txt" http://172.17.0.1
