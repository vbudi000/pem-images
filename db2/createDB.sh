#!/bin/sh +

whoami
sudo -i -u db2inst1 bash -c '/opt/ibm/db2/V11.5/bin/db2 -stvf /var/custom/create_pemdb.sql -z create.log'
