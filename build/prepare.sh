#!/bin/bash

. /opt/build/base.sh

cd /opt/toaruos

ls -lha

unset PKG_CONFIG_LIBDIR

toolchain/prepare.sh
