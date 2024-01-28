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

# Inherit from c2s device
$(call inherit-product, device/samsung/c2s/device.mk)

PRODUCT_DEVICE := c2s
PRODUCT_NAME := lineage_c2s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N986B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="c2sxxx-user 11 RP1A.200720.012 N986BXXS3DUJ6 release-keys"

BUILD_FINGERPRINT := samsung/c2sxxx/c2s:11/RP1A.200720.012/N986BXXS3DUJ6:user/release-keys
