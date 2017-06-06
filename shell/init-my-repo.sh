#!/bin/bash

SYS=""
case `uname` in
    Linux) SYS=linux ;;
    FreeBSD) SYS=fbsd ;;
    *CYGWIN*) SYS=cygwin ;;
    *MINGW*) SYS=mingw ;;
    Darwin) SYS=darwin ;;
esac

git st . 2>&1  | grep "Not a git repository" > /dev/null

if [ $? != 0 ]; then
	echo "not a empty dir"
	exit 1
else
	echo "start init my repo"
    if [ "$SYS" == "cygwin" ]; then
	    setx REPOROOT `bb-pwd.bat` /M
    fi
fi
