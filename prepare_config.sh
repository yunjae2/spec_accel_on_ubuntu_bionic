#!/bin/bash

CALLEE_DIR=`dirname $0`
pushd $CALLEE_DIR > /dev/null

sudo cp Example-opencl-intel-cpu.cfg /usr/accel/config/

popd > /dev/null
