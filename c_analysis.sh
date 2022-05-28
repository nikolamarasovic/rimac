#!/bin/bash
echo "Execute static analysis"
cd /home/ec2-user/
./CPAchecker-2.1.1-unix/scripts/cpa.sh  -preprocess -predicateAnalysis "${WORKSPACE}/main.c"
var=$(cat output/CPALog.txt | grep Error)
if [[ ! -z $var ]]; then
  echo "Static analysis failed, abort pipeline"
  exit 1
fi
echo "Static analysis successfully finished, proceed with pipeline"
cd ~
