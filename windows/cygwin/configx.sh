#!/bin/sh

#set -x

function check_int()
{
    tmp=`echo $1 |sed 's/[0-9]//g'`
    if [ -n "${tmp}" ] ;then
        return 1
    else
        return 0
    fi
}

usage="Usage: `basename $0` [dpi scale%]

if no scale, use 100%, as default dpi 96"

case $1 in
    --help)    exec echo "$usage";;
esac

if  [ ! -n "$1" ] ;then
    scale=100
elif [ `check_int $1` $? -ne "0" ] ;then
    scale=100
    echo -e "\033[31mscale must be interg, use default\033[0m"
elif [ "$1" -lt "20" ] || [ "$1" -gt "500" ] ;then
    scale=100
    echo -e "\033[31mscale must not be less than 20% or greater than 500%, use default\033[0m"
else
    scale=$1
fi

res_file=`mktemp --suffix=.res`
trap "rm -f $res_file" EXIT

echo "Xft.dpi: `expr 96 \* $scale / 100`" > $res_file
cat <<'RESEND' >> $res_file
Xft.autohint: 0
Xft.lcdfilter:  lcddefault
Xft.hintstyle:  hintfull
Xft.hinting: 1
Xft.antialias: 1
Xft.rgba: rgb
RESEND

xrdb $res_file
cat $res_file
