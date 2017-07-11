#!/bin/sh

set -x

OLDIFS="$IFS"
IFS=$'\n'
for oldname in `es QQPCExternal.exe`; do
	oldname=`echo $oldname | tr -cd "[:print:]"`
	newname=`echo $oldname | sed s/exe/bak/`
	mv "$oldname" "$newname"
done
IFS="$OLDIFS"