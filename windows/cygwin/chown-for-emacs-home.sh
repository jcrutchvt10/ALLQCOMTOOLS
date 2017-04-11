#!/bin/bash

set -x

owner=`whoami`
chown -R $owner ~/.emacs.d
