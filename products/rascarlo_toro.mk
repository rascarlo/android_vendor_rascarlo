# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/rascarlo/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := rascarlo_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:4.1.1/JRO03O/424425:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.1.1 JRO03O 424425 release-keys"

# Inherit media effect blobs
-include vendor/rascarlo/products/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/rascarlo/products/common_facelock.mk

# Inherit drm blobs
-include vendor/rascarlo/products/common_drm_phone.mk

# Inherit common build.prop overrides
-include vendor/rascarlo/products/common_versions.mk

# Common overlay
PRODUCT_PROPERTY_OVERRIDES += \
    ro.facelock.black_timeout=1250 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=800 \
    ro.facelock.use_intro_anim=true
