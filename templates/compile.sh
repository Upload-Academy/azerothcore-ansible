#!/bin/bash

root="{{ home }}/{{ azerothcore_folder }}"
cd "$root/{{ azerothcore_source_dest_dir }}"
mkdir -p build/
cd build

cmake ../ -DCMAKE_INSTALL_PREFIX="$root/{{ azerothcore_server_release }}/" \
        -DCMAKE_C_COMPILER=/usr/bin/clang \
        -DCMAKE_CXX_COMPILER=/usr/bin/clang++ \
        -DWITH_WARNINGS=1 \
        -DTOOLS_BUILD=all \
        -DSCRIPTS=static \
        -DMODULES=static \
        -DCONF_DIR=./etc

make -j $(nproc --all)
make install
