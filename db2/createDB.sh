#!/bin/sh +

whoami

sudo -i -u db2inst1 bash -c '/opt/ibm/db2/V11.5/bin/db2 -stvf /var/custom/create_pemdb.sql -z create_pemdb.log'
sudo -i -u db2inst1 bash -c '/opt/ibm/db2/V11.5/bin/db2 -stvf /var/custom/create_pemtest.sql -z create_pemtest.log'
