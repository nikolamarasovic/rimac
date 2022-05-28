#!/bin/bash

make clean
make main
var="$(./main.exe)"
echo $var
if [[ -z $var ]]; then
  echo "COMPILATION ERROR"
  exit 1
fi
if [[ $var =~ "FAILED" ]]; then
  echo "Build is unstable"
  exit 1
fi
echo "Build is stable"
exit 0
