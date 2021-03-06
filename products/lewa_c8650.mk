# Inherit AOSP device configuration for c8650.
$(call inherit-product, device/huawei/c8650/device_c8650.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/lewa/products/common_lewa.mk)

# Include GSM-only stuff
$(call inherit-product, vendor/lewa/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := lewa_c8650
PRODUCT_BRAND := huawei
PRODUCT_DEVICE := c8650
PRODUCT_MODEL := C8650/C8650+
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=c8650 BUILD_ID=GWK74 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=google/passion/passion:2.3.7/GWK74/121341:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.7 GWK74 121341 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := C8650
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/lewa/products/common_versions.mk

