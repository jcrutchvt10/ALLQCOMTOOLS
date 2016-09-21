#!/bin/bash

SYS=""
case `uname` in
    Linux) SYS=linux ;;
    FreeBSD) SYS=fbsd ;;
    *CYGWIN*) SYS=cygwin ;;
    *MINGW*) SYS=mingw ;;
    Darwin) SYS=darwin ;;
esac

if [ "$SYS" == "cygwin" ]; then
    cp -rf ~/xcfg/cygwin/home/.* ~/
elif [ "$SYS" == "darwin" ]; then
    cp -rf ~/xcfg/macos/home/.* ~/
elif [ "$SYS" == "linux" ]; then
    cp -rf ~/xcfg/linux/home/.* ~/
else
    echo "Can not regonize your system"
fi
