#!/bin/sh

set -x

proxy_url=$1

export https_proxy=http://$proxy_url
export http_proxy=http://$proxy_url
