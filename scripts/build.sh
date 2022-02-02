#!/usr/bin/env bash

# apt-get install libssl-dev gdb

# pushd /transport/cpp-qt-client/client

cp -Rv /scripts/example/* /transport/cpp-qt-client/
mkdir -p /transport/cpp-qt-client/build
pushd /transport/cpp-qt-client


mkdir -p build
pushd build
cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug ..
# cmake --build .
ninja -j1
./foo
