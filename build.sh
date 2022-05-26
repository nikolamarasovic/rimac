#!/bin/bash
echo "testing webhook"
make clean
#make -f "${WORKSPACE}/Makefile"
make main
#cd "${WORKSPACE}"
var="$(./main.exe)"
echo $var
if [[ $var =~ "FAILED" ]]; then
  echo "Build is unstable"
  exit 1
fi
echo "Build is stable"
exit 0
