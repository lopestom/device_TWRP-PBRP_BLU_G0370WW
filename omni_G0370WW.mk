
# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from G0370WW device
$(call inherit-product, device/blu/G0370WW/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := G0370WW
PRODUCT_NAME := omni_G0370WW
PRODUCT_BRAND := BLU
PRODUCT_MODEL := G90 PRO
PRODUCT_MANUFACTURER := BLU
PRODUCT_RELEASE_NAME := BLU G90 PRO

# HACK: Set vendor patch level and enable Treble
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \
    ro.treble.enabled=true
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0
