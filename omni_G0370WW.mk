#
# Copyright (C) 2020 The Android Open Source Project
#

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/treble_common_64.mk)

#Compiling PB Recovery
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from G0370WW device
$(call inherit-product, device/blu/G0370WW/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

#Compiling PB Recovery
#$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := G0370WW
PRODUCT_NAME := omni_G0370WW
PRODUCT_BRAND := BLU
PRODUCT_MODEL := G90 PRO
PRODUCT_MANUFACTURER := BLU
PRODUCT_RELEASE_NAME := BLU G90 PRO
PRODUCT_BOARD := k85v1_64_bsp

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=G0370WW \
    PRODUCT_NAME=G90_PRO \
    PRIVATE_BUILD_DESC="full_k85v1_64-user 10 QP1A.190711.020 1594362725 release-keys"

BUILD_FINGERPRINT := BLU/G90_PRO/G0370WW:10/QP1A.190711.020/1594362725:user/release-keys
PLATFORM_SECURITY_PATCH := 2099-12-31

# HACK: Set vendor patch level and enable Treble
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \
    ro.treble.enabled=true \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0
