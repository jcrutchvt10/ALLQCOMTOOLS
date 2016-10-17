#!/bin/bash

#Android Fast reBuild script

################################# func ############################

gen_mkfile ()
{
	cat <<EOF > $ANDROID_PRODUCT_OUT/Android.mk
#common device
-include \$(TARGET_DEVICE_DIR)/AndroidBoard.mk

#msm8996
-include vendor/qcom/proprietary/common/scripts/Android.mk
EOF
}

####################################### main ################################################

cpus=$( grep '^processor' /proc/cpuinfo | wc -l) #default

source $(ANDROID_BUILD_TOP)/build/envsetup.sh > /dev/null

if [ ! -d "$(ANDROID_PRODUCT_OUT)" ]; then
    mkdir -p $(ANDROID_PRODUCT_OUT)
fi

gen_mkfile

cd $(ANDROID_PRODUCT_OUT)

case "$1" in  
	aboot)
        mm aboot -j$(cpus);;
	bootimage)
        mm bootimage -j$(cpus);;
	*) 
		echo -e "Android Fast Build What???\n"
		echo "afb.sh aboot"
		echo "afb.sh bootimage"
		;;
esac
