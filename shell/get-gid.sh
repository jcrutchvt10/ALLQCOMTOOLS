#!/bin/bash

awk -F':' '
    BEGIN { print "group: gid" ; }
    //{printf "%s: %s\n",$1, $3 }
' /etc/group