#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8937-common
$(call inherit-product, device/motorola/msm8937-common/msm8937.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/motorola/james/james-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Properties
-include $(LOCAL_PATH)/vendor_prop.mk

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/mot_hi556_byd_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_hi556_byd_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_hi556_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_hi556_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_hi846_byd_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_hi846_byd_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_hi846_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_hi846_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/msm8917_mot_james_camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/msm8917_mot_james_camera.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/uinput-egis.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-egis.kl

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-egis.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-egis.idc

# Ramdisk
PRODUCT_PACKAGES += \
    init.device.rc

PRODUCT_PACKAGES += \
    init.qcom.sensors.sh

# Releasetools script
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/check_device.sh:install/bin/check_device.sh

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
