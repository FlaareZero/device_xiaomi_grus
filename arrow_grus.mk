#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/grus
TARGET_APPS_ARCH := arm64

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common stuff
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from land device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_grus
PRODUCT_DEVICE := grus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9 SE
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ1A.210205.004/7038034:user/release-keys" \

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ1A.210205.004 7038034 release-keys" \
    PRODUCT_NAME="grus" \
    TARGET_DEVICE="grus"

#PLATFORM_SECURITY_PATCH := 2021-02-05

ARROW_GAPPS := false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/redfin/redfin:11/RQ1A.210205.004/7038034:user/release-keys \
    ro.build.description=redfin-user 11 RQ1A.210205.004 7038034 release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    persist.device_config.runtime_native.usap_pool_enabled=true \
    ro.debuggable=0

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
PRODUCT_PACKAGES_DEBUG := false
PRODUCT_PACKAGES_DEBUG_ASAN := false
PRODUCT_DEXPREOPT_SPEED_APPS += SystemUI

