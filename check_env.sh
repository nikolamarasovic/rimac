#!/bin/bash
echo "Prepare Environment"
gcc=$(gcc --version | grep gcc | awk '{print $3}')
if [[ -z $gcc ]]; then
    echo "gcc is not installed"
    exit 1
fi
git=$(git --version | awk '{print $3}')
if [[ -z $git ]]; then
    echo "git is not installed"
    exit 1
fi
echo "Environment is ready"
