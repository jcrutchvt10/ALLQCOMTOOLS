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
    ps -aW | percol | awk {'print $2'} | xargs kill -9
else
    ps -aux | percol | awk {'print $2'} | xargs kill -9
fi
