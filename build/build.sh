#!/bin/bash

. /opt/build/base.sh

cd /opt/toaruos

unset PKG_CONFIG_LIBDIR

toolchain/prepare.sh

toolchain/install.sh

. toolchain/activate.sh

make

toolchain/install-python.sh
toolchain/install-pycairo.sh

rm -r toaru-python
rm -r pycairo
rm -r toolchain/tarballs
rm -r build
