# Inherit AOSP device configuration for marvel.
$(call inherit-product, device/htc/marvel/device_marvel.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_marvel
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := marvel
# PRODUCT_MODEL := HTC Wildfire S
PRODUCT_MODEL := Wildfire S
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_marvel BUILD_ID=GWK74 BUILD_FINGERPRINT=google/passion/passion:2.3.7/GWK74/120222:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.7 GWK74 120222 release-keys"

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/cyanogen/prelink-linux-arm-msm722x.map

# Broadcom FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := marvel
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
