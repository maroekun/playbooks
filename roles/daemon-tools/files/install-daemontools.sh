#!/bin/sh

cd /package/admin/daemontools-0.76

# apply patch
echo gcc -O2 -include /usr/include/errno.h > src/conf-cc

# do install
./package/install
