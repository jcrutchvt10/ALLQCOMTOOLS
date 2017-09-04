#!/bin/bash

usage="Usage: $0 key key.pub

$0 1.0 by Bouken Shounen."

case $1 in
-h)    exec echo "$usage";;
--help)    exec echo "$usage";;
esac

if [ ! -f "$1" ]; then 
  echo -e "\033[31mErr: $1 invalid\033[0m"
  echo ""
  exec echo "$usage"
  exit 1
fi

if [ ! -f "$2" ]; then 
  echo -e "\033[31mErr: $2 invalid\033[0m"
  echo ""
  exec echo "$usage"
  exit 1
fi

diff <( ssh-keygen -y -e -f "$1" ) <( ssh-keygen -y -e -f "$2" )

if [ $? != 0 ]; then
    echo -e "\n\033[31mWarning, not pair!\033[0m"
else
    echo "Good"
fi

