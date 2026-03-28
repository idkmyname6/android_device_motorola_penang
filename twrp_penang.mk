#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from penang device
$(call inherit-product, device/motorola/penang/device.mk)

PRODUCT_DEVICE := penang
PRODUCT_NAME := omni_penang
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Holi for arm64
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="penang_sb-user 11 U1TPJS34.29-83-6-3-11 68ff9 release-keys"

BUILD_FINGERPRINT := motorola/penang_sb/penang:11/U1TPJS34.29-83-6-3-11/68ff9:user/release-keys
