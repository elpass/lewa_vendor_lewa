# Inherit device configuration for vision.
$(call inherit-product, device/htc/vision/vision.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_vision
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := vision
PRODUCT_MODEL := HTC Vision
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vision BUILD_ID=GRI40 BUILD_FINGERPRINT=htc_wwe/htc_vision/vision:2.3.3/GRI40/84109:user/release-keys PRIVATE_BUILD_DESC="2.42.405.2 CL84109 release-keys"

PRODUCT_SPECIFIC_DEFINES = WEBCORE_ACCELERATED_SCROLLING=true

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_vision_defconfig

# Extra Vision overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/vision

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Build GanOptimizer
PRODUCT_PACKAGES += GanOptimizer

# Broadcom FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := vision
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy passion specific prebuilt files
#


