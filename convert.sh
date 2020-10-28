#!/bin/sh
module load global/cluster

prefix=input_
suffix=_tddft.out 
for index in {1..50}
do
  var=$index
  sub_name=$prefix$var$suffix
  orca_mapspc $sub_name ABSQ -eV -x07000 -x17150 -w1.5 -n1500
  sleep 3
done

echo Conversion of the spectra completed!