#!/bin/bash

version="3.31"
root="/home/grosa/Dev/ns-allinone-${version}"

if [ ! -e ${root}/bkup/aodv-routing-protocol.cc ]; then
    echo "Backup aodv files..."
    cp -f "${root}/ns-${version}/src/aodv/model/aodv-routing-protocol.cc" "${root}/bkup/aodv-routing-protocol.cc" 
    cp -f "${root}/ns-${version}/src/aodv/model/aodv-routing-protocol.h" "${root}/bkup/aodv-routing-protocol.h"
fi

echo "Copying aodv files..."
cp -f "aodv-routing-protocol.cc" "${root}/ns-${version}/src/aodv/model/aodv-routing-protocol.cc" 
cp -f "aodv-routing-protocol.h" "${root}/ns-${version}/src/aodv/model/aodv-routing-protocol.h"

echo "Copying simulation wormhole attack files..."
cp -f "myapp.h" "${root}/ns-${version}/scratch/myapp.h"
cp -f "wormhole-attack.cc" "${root}/ns-${version}/scratch/wormhole-attack.cc"

echo "Copying run wormhole attack file..."
cp -f "run.sh" "${root}/ns-${version}/run-wormhole.sh"

echo "Building ns-3..."
cd $root
./build.py