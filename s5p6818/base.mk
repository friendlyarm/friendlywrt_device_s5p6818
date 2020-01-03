#!/bin/bash

TARGET_PLAT=s5p4418
TARGET_ARCH=arm64
CROSS_COMPILER=aarch64-linux-gnu-
TARGET_OSNAME=friendlywrt

# FriendlyWRT
# 

TARGET_FRIENDLYWRT_CONFIG=config_s5p6818
FRIENDLYWRT_SRC=friendlywrt
FRIENDLYWRT_PACKAGES+=(packages/pkg1)
FRIENDLYWRT_PACKAGES+=(packages/pkg2)
FRIENDLYWRT_FILES+=(device/friendlyelec/s5p6818/default-settings)
FRIENDLYWRT_FILES+=(device/friendlyelec/s5p6818/common-files)

# U-boot
# 

TARGET_UBOOT_CONFIG=s5p6818_nanopi3_config

# Kernel
# 

TARGET_KERNEL_CONFIG=nanopi3_linux_defconfig
TARGET_KERNEL_DTB=s5p6818-nanopi3-*.dtb

# Misc
# 
FRIENDLYWRT_ROOTFS=build_dir/target-aarch64_cortex-a53_musl/root-nexell-s5p6818
TARGET_IMAGE_DIRNAME=friendlywrt
TARGET_SD_RAW_FILENAME=FriendlyWrt_$(date +%Y%m%d)_S5P6818_arm64_sd.img
TARGET_EFLASHER_RAW_FILENAME=FriendlyWrt_$(date +%Y%m%d)_S5P6818_arm64_eflasher.img


