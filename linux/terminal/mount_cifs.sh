#!/bin/bash  

while getopts "r:m:u:p:" opt; do  
	case $opt in  
		r)  
			remotetarget=$OPTARG   
			;;  
		m)  
			mountpoint=$OPTARG   
			;;  
		u)
			username=$OPTARG
			;;
		p)  
			password=$OPTARG   
			;;
	esac
done

if  [ ! -n "$remotetarget" ] || [ ! -n "$mountpoint" ] \
|| [ ! -n "$username" ] || [ ! -n "$password" ]; then
	echo "mount_cifs -r remotetarget -m mountpoint -u username -p password"
	#echo "$remotetarget" "$mountpoint" "$username" "$password"
    exit 1
fi

mount.cifs $remotetarget $mountpoint -o file_mode=0777,dir_mode=0666,iocharset=utf8,rw,username=$username,password=$password
