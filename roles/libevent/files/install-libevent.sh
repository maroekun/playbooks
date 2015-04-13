#!/bin/sh

cd /usr/local/src

tar -xzf $1.tar.gz
chown root:root $1
cd ./$1 && ./configure && make && make install

echo "/usr/local/lib" >> /etc/ld.so.conf.d/libevent.conf
ldconfig

