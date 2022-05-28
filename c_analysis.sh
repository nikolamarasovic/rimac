#!/bin/bash
echo "Execute static analysis"
cd /home/ec2-user/
var=$(./CPAchecker-2.1.1-unix/scripts/cpa.sh  -preprocess -predicateAnalysis "${WORKSPACE}/main.c")
echo $var
if [[ $var =~ "Error" ]]; then
  echo "Static analysis failed, abort pipeline"
  exit 1
fi
echo "Static analysis successfully finished, proceed with pipeline"
cd ~
