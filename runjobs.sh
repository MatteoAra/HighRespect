#!/bin/sh
module load global/cluster

prefix=job_
for index in {1..50}
do
  suffix=$index
  sub_name=$prefix$suffix
  qsub $sub_name
  sleep 1
done