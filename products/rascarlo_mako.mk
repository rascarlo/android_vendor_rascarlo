# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files.
$(call inherit-product, vendor/rascarlo/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := rascarlo_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# FIngerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/occam/mako:5.1.1/LMY47V/1836172:user/release-keys \
    PRIVATE_BUILD_DESC="occam-user 5.1.1 LMY47V 1836172 release-keys"

# Inherit media effect blobs
-include vendor/rascarlo/products/common_media_effects.mk
