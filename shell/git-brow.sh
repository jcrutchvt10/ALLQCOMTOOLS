#!/bin/bash

url=`git remote -v  | awk '{print $2}' | head -1 | sed "s/\.git//g"`

exo-open $url 2>&1 >/dev/null