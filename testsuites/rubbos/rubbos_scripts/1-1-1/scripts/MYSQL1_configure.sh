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

echo "CONFIGURING MYSQL on $HOSTNAME"

cd $MYSQL_HOME
chown -R mysql:mysql ./
cp support-files/my-medium.cnf /etc/my.cnf
#bin/mysqld_safe --user=$BOTTLENECKS_USER &
#bin/mysqladmin -u root password 'new-password'
cp support-files/mysql.server /etc/init.d/mysql.server
/etc/init.d/mysql.server status

if [ -f "/usr/local/bin/mysql" ]; then
rm -rf /usr/local/bin/mysql
fi

ln -s $MYSQL_HOME/bin/mysql /usr/local/bin/mysql

echo "DONE CONFIGURING MYSQL on $HOSTNAME"
