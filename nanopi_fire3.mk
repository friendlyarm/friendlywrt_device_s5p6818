#!/bin/bash

TARGET_PLAT=h3
TARGET_ARCH=arm
CROSS_COMPILER=arm-linux-

# FriendlyWRT
# 

TARGET_FRIENDLYWRT_CONFIG=config_h3
FRIENDLYWRT_SRC=friendlywrt
FRIENDLYWRT_PACKAGES+=(packages/pkg1)
FRIENDLYWRT_PACKAGES+=(packages/pkg2)
FRIENDLYWRT_FILES+=(device/friendlyelec/h3/default-settings)
FRIENDLYWRT_FILES+=(device/friendlyelec/h3/common-files)

# U-boot
# 

TARGET_UBOOT_CONFIG=nanopi_h3_defconfig

# Kernel
# 

TARGET_KERNEL_CONFIG=sunxi_defconfig
TARGET_KERNEL_DTB=sun8i-*-nanopi-*.dtb

# Misc
# 
FRIENDLYWRT_ROOTFS=build_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/root-sunxi
TARGET_IMAGE_DIRNAME=friendlywrt_4.14_armhf
TARGET_SD_RAW_FILENAME=FriendlyWrt_$(date +%Y%m%d)_NanoPi-R1_armhf_sd.img
TARGET_EFLASHER_RAW_FILENAME=FriendlyWrt_$(date +%Y%m%d)_NanoPi-R1_armhf_eflasher.img


