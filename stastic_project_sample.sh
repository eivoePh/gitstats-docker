#!/bin/sh 
rm -rf /data/tmp/out
mkdir /data/tmp/out
docker run --rm -v /you-project-:/resp -v /data/tmp/out:/out stanjia/gitstats
