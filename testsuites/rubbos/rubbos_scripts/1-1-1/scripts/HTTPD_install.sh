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

echo "INSTALLING APACHE on $HOSTNAME"

echo "Adding new user apache begin"
useradd apache
groupadd apache
usermod -G apache apache
echo "Adding new user apache end"

mkdir -p $BOTTLENECKS_TOP
chmod 755 $BOTTLENECKS_TOP
mkdir -p $RUBBOS_TOP
chmod 755 $RUBBOS_TOP
mkdir -p $RUBBOS_APP
chmod 755 $RUBBOS_APP

# apache
tar zxf $SOFTWARE_HOME/$HTTPD_TARBALL --directory=$RUBBOS_APP
cd $HTTPD_INSTALL_FILES 
./configure --prefix=$HTTPD_HOME --enable-module=so --enable-so --with-mpm=worker >/dev/null
make >/dev/null
make install >/dev/null

# mod jk
tar zxf $SOFTWARE_HOME/$MOD_JK_TARBALL --directory=$RUBBOS_APP
tar zxf $SOFTWARE_HOME/$JAVA_TARBALL --directory=$RUBBOS_APP
cd $MOD_JK_INSTALL_CONFIGURE
./configure --with-apxs=$HTTPD_HOME/bin/apxs --enable-jni --with-java-home=$JAVA_HOME >/dev/null
make >/dev/null
make install >/dev/null

echo "APACHE IS INSTALLED on $HOSTNAME"