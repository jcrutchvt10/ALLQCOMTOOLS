#!/bin/bash

autoscan

#configure.scan -> configure.in(configure.ac)
# Write Makefile.am

aclocal

autoconf

automake -a

./confiugre

make
