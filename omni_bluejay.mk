#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from bluejay device
$(call inherit-product, device/google/bluejay/device.mk)

PRODUCT_DEVICE := bluejay
PRODUCT_NAME := omni_bluejay
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6a
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bluejay_beta-user UpsideDownCake UPP2.230217.004 9663077 release-keys"

BUILD_FINGERPRINT := google/bluejay_beta/bluejay:UpsideDownCake/UPP2.230217.004/9663077:user/release-keys
