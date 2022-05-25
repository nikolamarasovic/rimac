#!/bin/bash
#make clean
make -f "${WORKSPACE}/Makefile"
var="${"./"${WORKSPACE}/main.exe"}"
echo $var
