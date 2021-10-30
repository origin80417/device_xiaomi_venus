#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from venus device
$(call inherit-product, device/xiaomi/venus/device.mk)

# Inherit some common AEX stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Aosp Extended Properties
WITH_CORE_GAPPS := true
TARGET_BOOT_ANIMATION_RES := 1440
EXTRA_FOD_ANIMATIONS := true

PRODUCT_NAME := aosp_venus
PRODUCT_DEVICE := venus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2011K2C
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build fingerprint
BUILD_FINGERPRINT := "Xiaomi/venus/venus:11/RKQ1.200928.002/V12.5.11.0.RKBCNXM:user/release-keys"
