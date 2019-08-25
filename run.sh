#!/bin/bash

workload=$1

SPEC_DIR=/usr/accel
pushd $SPEC_DIR > /dev/null

source ./shrc
cp config/Example-opencl-intel-cpu.cfg ./config/config.cfg
logfile=`runspec --device CPU --iterations 1 --size ref --action onlyrun --config config.cfg --noreportable $workload | grep "The log for this run is in " | awk '{print $8}'`
cat $logfile

popd > /dev/null
