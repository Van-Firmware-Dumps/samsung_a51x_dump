#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a51x device
$(call inherit-product, device/samsung/a51x/device.mk)

PRODUCT_DEVICE := a51x
PRODUCT_NAME := lineage_a51x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A516N
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a51xks-user 13 TP1A.220624.014 A516NKSU7FXB3 release-keys"

BUILD_FINGERPRINT := samsung/a51xks/a51x:13/TP1A.220624.014/A516NKSU7FXB3:user/release-keys
