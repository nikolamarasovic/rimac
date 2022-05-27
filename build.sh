#!/bin/bash
make clean
make main
var="$(./main.exe)"
echo $var
if [[ $var =~ "FAILED" ]]; then
  echo "Build is unstable"
  exit 1
fi
echo "Build is stable"
exit 0
