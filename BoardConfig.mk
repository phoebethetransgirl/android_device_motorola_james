#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8937-common
-include device/motorola/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/james

# Display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_DENSITY := 320

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := james_defconfig

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11490278400

# Security patch level
VENDOR_SECURITY_PATCH := 2020-06-04

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/motorola/james/BoardConfigVendor.mk
