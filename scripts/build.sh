#!/usr/bin/env bash


pushd /transport/cpp-qt-client/client
mkdir build
pushd build
cmake .. -G Ninja
# cmake --build .
ninja -j1
