#!/usr/bin/env bash
set -ex

bash autogen.sh

mkdir -p build && cd build
../configure --disable-dependency-tracking

make clean
make -j`nproc`
make check
