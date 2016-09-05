@echo off
dir | peco | busybox awk "{print $4}" | tr '\n' ' ' |clip
