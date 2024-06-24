#!/bin/bash

export TERM=xterm-256color

if [ "$1" = "make" ]; then
    make
elif [ "${1: -2}" = ".c" ]; then
    cc $@ -o a.out
elif [ "${1: -4}" = ".cpp" ]; then
    c++ $@ -o a.out
else
    valgrind $@
fi
