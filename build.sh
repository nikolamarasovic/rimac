#!/bin/bash
make clean
make -f "${WORKSPACE}/Makefile"
#cd "${WORKSPACE}"
var="$(./main.exe)"
echo $var

