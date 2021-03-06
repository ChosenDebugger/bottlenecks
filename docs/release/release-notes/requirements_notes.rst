.. This work is licensed under a Creative Commons Attribution 4.0 International License.
.. http://creativecommons.org/licenses/by/4.0
.. (c) Huawei Technologies Co.,Ltd and others.


**********************************************************
Bottlenecks Requirements Notes for OPNFV Euphrates Release
**********************************************************

======================
Installer Requirements
======================

Bottlenecks releases after  Euphrates are installer-agnostic which means that
the test cases could be executed over different deployments.
However, the pod description file,
openstack rc file and the admin credentials
are required to automatically get the SUT informations.

=====================
Hardware Requirements
=====================

No specific requirements for hardware, as long as there is external network connection.
So that the dependent package could be downloaded.

=====================
Software Requirements
=====================

Operation System
----------------

Ubuntu 14.04 is the default system. However, we do not do any linux core operation or call any system related api directly. The software could be runned in higher versions of Ubuntu with high probability. 

Cloud OS
--------

Bottlenecks supports OpenStack with compatibility for both OpenStack Keystone V2/V3 API. That is, Bottlenecks could be run over previous versions of OpenStack.

Depending Package
-----------------

- appdirs==1.4.0
- Babel==2.2.0
- backport-ipaddress==0.1
- cliff==2.0.0
- cmd2==0.6.8
- coverage==4.1b2
- debtcollector==1.3.0
- ecdsa==0.13
- extras==0.0.3
- fixtures==1.4.0
- flake8==2.5.4
- funcsigs==0.4
- functools32==3.2.3.post2
- futures==3.0.5
- iso8601==0.1.11
- Jinja2==2.8
- jsonpatch==1.13
- jsonpointer==1.10
- jsonschema==2.5.1
- keystoneauth1==2.3.0
- linecache2==1.0.0
- lxml==3.5.0
- MarkupSafe==0.23
- mccabe==0.4.0
- mock==1.3.0
- monotonic==1.0
- msgpack-python==0.4.7
- netaddr==0.7.18
- netifaces==0.10.4
- nose==1.3.7
- openstacksdk==0.8.1
- os-client-config==1.16.0
- oslo.config==3.9.0
- oslo.i18n==3.4.0
- oslo.serialization==2.4.0
- oslo.utils==3.7.0
- paramiko==1.16.0
- pbr==1.8.1
- pep8==1.7.0
- positional==1.0.1
- prettytable==0.7.2
- pycrypto==2.6.1
- pyflakes==1.0.0
- pyparsing==2.1.0
- pyrsistent==0.11.12
- python-cinderclient==1.6.0
- python-glanceclient==2.0.0
- python-heatclient==1.0.0
- python-keystoneclient==2.3.1
- python-mimeparse==1.5.1
- python-neutronclient==4.1.1
- python-novaclient==3.3.0
- python-openstackclient==2.2.0
- python-subunit==1.2.0
- python-swiftclient==3.0.0
- pytz==2015.7
- PyYAML==3.11
- requests==2.9.1
- requestsexceptions==1.1.3
- scp==0.10.2
- simplejson==3.8.2
- six==1.10.0
- stevedore==1.12.0
- testrepository==0.0.20
- testtools==2.0.0
- traceback2==1.4.0
- unicodecsv==0.14.1
- unittest2==1.1.0
- warlock==1.2.0
- wrapt==1.10.6
- pyroute2==0.4.10
- elasticsearch==5.0.1
- docker==2.0.2
