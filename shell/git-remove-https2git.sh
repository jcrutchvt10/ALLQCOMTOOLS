#!/bin/bash

set -x
remote_name=`git remote -v | sed -n 1p | awk '{print $1}'`
git_url=`git remote -v | sed -n 1p | awk '{print $2}' |  sed -e 's/^https:\/\//git@/' -e 's/\//:/'`


git remote remove $remote_name
git remote add $remote_name $git_url
