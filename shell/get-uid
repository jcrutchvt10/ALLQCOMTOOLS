#!/bin/bash
awk -F':' '
    BEGIN { print "user: uid" ; }
    //{printf "%s: %s\n",$1, $3 }
' /etc/passwd