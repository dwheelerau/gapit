#!/bin/bash

#~/software/tassel-5-standalone/run_pipeline.pl \
# -plink -importGuess ./myplinkp1Filt.ped -export mytasselFiltered \
# -exportType Hapmap
~/opt/tassel-5-standalone/run_pipeline.pl -plink -ped myplinkp1Filt.ped \
  -map myplinkp1Filt.map -export myplinkp1Filt -exportType Hapmap
