#!/bin/bash

. /opt/build/base.sh

cd /opt

wget https://www.python.org/ftp/python/3.6.2/Python-3.6.2.tar.xz

tar -xvf Python-3.6.2.tar.xz

cd /opt/Python-3.6.2

./configure

make
make install

python3.6 --version
