#!/bin/bash

if [ -f "$HOME/.winixrc" ]; then
	source ~/.winixrc
fi

XVM=10.0.1.129
ROUTER_IP=192.168.1.1
WORK=user5@10.150.20.15

echo "connect to $1"
case "$1" in  
	xvm)
		startx.bat &
		ssh $XVM -p 22 -o ForwardX11Trusted=yes -o ForwardX11=yes -C -o Compression=yes;;
	router) ssh $ROUTER_IP -l root -p 22;;
	work) ssh $WORK -p 22 -o ForwardX11Trusted=yes -o ForwardX11=yes -C -o Compression=yes;;
	*) echo "no target for $1" >&2;;
esac
