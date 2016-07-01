#!/bin/bash

#Android Fast reBuild script

################################# func ############################

gen_mkfile ()
{
	cat <<EOF > $ANDROID_PRODUCT_OUT/Android.mk
include \$(TARGET_DEVICE_DIR)/AndroidBoard.mk
#include \$(TARGET_DEVICE_DIR)/BoardConfig.mk
include vendor/qcom/proprietary/common/scripts/Android.mk
EOF
}

####################################### main ################################################

cpus=$( cat /proc/cpuinfo | grep '^processor'| wc -l) #default
cpus=$((cpus * 2 - 1))

source $ANDROID_BUILD_TOP/build/envsetup.sh > /dev/null

if [ ! -d "$ANDROID_PRODUCT_OUT" ]; then
	 mkdir -p $ANDROID_PRODUCT_OUT
fi

gen_mkfile

cd $ANDROID_PRODUCT_OUT

case "$1" in  
	aboot)
		mm aboot -j$cpus;;
	bootimage)
		mm bootimage -j$cpus;;
	*) 
		echo "Android Fast Build What???\n"
		echo "afb.sh aboot"
		echo "afb.sh bootimage"
		;;
esac
