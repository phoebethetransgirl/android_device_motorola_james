#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/motorola/james/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_james
PRODUCT_DEVICE := james
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto e5 play
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model \
    ro.product.name

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="james_retail-user 8.0.0 OPPS27.91-121-28 29 release-keys" \
    PRODUCT_NAME="james_retail"

BUILD_FINGERPRINT := motorola/james_retail/james:8.0.0/OPPS27.91-121-28/29:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola
