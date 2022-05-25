#!/bin/bash
make -f "${WORKSPACE}/Makefile"
var="${"./"${WORKSPACE}/main.exe"}"
echo $var