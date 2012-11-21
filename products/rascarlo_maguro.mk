# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/rascarlo/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := rascarlo_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/takju/maguro:4.2/JOP40C/527662:user/release-keys" PRIVATE_BUILD_DESC="takju-user 4.2 JOP40C 527662 release-keys"

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
    ro.facelock.use_intro_anim=true \
    ro.com.google.mcc_fallback=262
