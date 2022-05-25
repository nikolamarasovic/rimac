#!/bin/bash
#make clean
make -f "${WORKSPACE}/Makefile"
var="$(."${WORKSPACE}/main")"
echo $var
