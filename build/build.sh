#!/bin/bash

. /opt/build/base.sh

cd /opt/toaruos

unset PKG_CONFIG_LIBDIR

toolchain/install.sh

. toolchain/activate.sh

make

toolchain/install-python.sh
toolchain/install-pycairo.sh
