##############################################################################
# Copyright (c) 2015 Huawei Technologies Co.,Ltd. and others
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Apache License, Version 2.0
# which accompanies this distribution, and is available at
# http://www.apache.org/licenses/LICENSE-2.0
##############################################################################


import subprocess as subp
import sys
from collector import Collector
from uploader import Uploader


#process data
if len(sys.argv)!=3:
    print "Wrong arguments, please input 2 parameters, 1st as raw data path; "\
    "2nd as config yaml!!"
    exit (1)
data_home = sys.argv[1]
conf = sys.argv[2]

#1collect result
result = Collector().collect_data(data_home)
print "Result collected:\n%s" % result

#2upload result
Uploader(conf).upload_result("rubbos", result)
