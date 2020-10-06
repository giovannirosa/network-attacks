#!/bin/bash

version="3.31"
root="/home/grosa/Dev/ns-allinone-${version}"

echo "Copying simulation stealth file..."
cp -f "ddos-attack.cc" "${root}/ns-${version}/scratch/ddos-attack.cc"

echo "Copying run stealth file..."
cp -f "run.sh" "${root}/ns-${version}/run.sh"

echo "Building ns-3..."
cd $root
./build.py