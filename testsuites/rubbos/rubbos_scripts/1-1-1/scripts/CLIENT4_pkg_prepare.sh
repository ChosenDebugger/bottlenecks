#!/bin/bash
##############################################################################
# Copyright (c) 2015 Huawei Technologies Co.,Ltd and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Apache License, Version 2.0
# which accompanies this distribution, and is available at
# http://www.apache.org/licenses/LICENSE-2.0
##############################################################################

. ../set_bottlenecks_rubbos_env.sh

scp_options="-o StrictHostKeyChecking=no -o BatchMode=yes"

# Packages for CLIENT4 rubbos install
if true; then
ssh $CLIENT4_HOST "mkdir -p /bottlenecks/rubbos/rubbos_scripts/1-1-1"
scp $scp_options ../set_bottlenecks_rubbos_env.sh $CLIENT4_HOST:/bottlenecks/rubbos/rubbos_scripts/1-1-1

ssh $CLIENT4_HOST "mkdir -p $SOFTWARE_HOME"
scp $scp_options $SOFTWARE_HOME/$RUBBOS_TARBALL $CLIENT4_HOST:$SOFTWARE_HOME/$RUBBOS_TARBALL
scp $scp_options $SOFTWARE_HOME/flush_cache $CLIENT4_HOST:$SOFTWARE_HOME/flush_cache
scp $scp_options $SOFTWARE_HOME/$SYSSTAT_TARBALL $CLIENT4_HOST:$SOFTWARE_HOME/$SYSSTAT_TARBALL
ssh $CLIENT4_HOST "mkdir -p $OUTPUT_HOME/rubbos_conf"
scp $scp_options $OUTPUT_HOME/rubbos_conf/cpu_mem.sh $CLIENT4_HOST:$OUTPUT_HOME/rubbos_conf/cpu_mem.sh
fi

# Packages for CLIENT4 install
if true; then
scp $scp_options $SOFTWARE_HOME/$JAVA_TARBALL $CLIENT4_HOST:$SOFTWARE_HOME/$JAVA_TARBALL
fi

# Packages for CLIENT4 configure
if true; then
ssh $CLIENT4_HOST "mkdir -p $WORK_HOME/rubbos_files"
scp $scp_options -r $WORK_HOME/rubbos_files/Client $CLIENT4_HOST:$WORK_HOME/rubbos_files
scp $scp_options -r $WORK_HOME/rubbos_files/bench $CLIENT4_HOST:$WORK_HOME/rubbos_files
ssh $CLIENT4_HOST "mkdir -p $OUTPUT_HOME/rubbos_conf"
for i in build.properties config.mk Makefile \
         rubbos-servletsBO.sh rubbos-servletsRW.sh
do
    scp $scp_options -r $OUTPUT_HOME/rubbos_conf/$i $CLIENT4_HOST:$OUTPUT_HOME/rubbos_conf/$i
done
fi
