#!/bin/bash
if [ -f "$HOME/.winixrc" ]; then
	source ~/.winixrc
fi

UBUNTU_IP=172.16.14.252
ROUTER_IP=192.168.1.1

echo "connect to $1"
case "$1" in  
	ubuntu)
		startx.bat &
		ssh $UBUNTU_IP -l root -p 22 -o ForwardX11Trusted=yes -o ForwardX11=yes -C -o Compression=yes;;
	router) ssh $ROUTER_IP -l root -p 22;;
	*) echo "no target for $1" >&2;;
esac