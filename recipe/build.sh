#!/bin/bash

mkdir build && cd build
cmake .. \
    -GNinja \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DCMAKE_FIND_ROOT_PATH=$PREFIX \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_FLAGS=-L$PREFIX/lib

ninja install
