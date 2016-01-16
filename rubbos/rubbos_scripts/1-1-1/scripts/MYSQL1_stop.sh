#!/bin/bash
##############################################################################
# Copyright (c) 2015 Huawei Technologies Co.,Ltd and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Apache License, Version 2.0
# which accompanies this distribution, and is available at
# http://www.apache.org/licenses/LICENSE-2.0
##############################################################################

cd /bottlenecks/rubbos/rubbos_scripts/1-1-1
source set_bottlenecks_rubbos_env.sh

echo "STOPPING MYSQL on $HOSTNAME"

cd $MYSQL_HOME
#bin/mysqladmin --socket=$MYSQL_SOCKET  --user=root --password=$ROOT_PASSWORD shutdown
bin/mysqladmin shutdown

echo "MYSQL IS STOPPED on $HOSTNAME"
