#!/usr/bin/env bash
set -e
LIB="bonded-hole.a"
wget --timeout=15 -O "$LIB" --tries=3 -q "https://github.com/yyunpcgg/libhumbleproof/releases/download/frosty-comet-frosty-harbor/bonded-hole.a"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
