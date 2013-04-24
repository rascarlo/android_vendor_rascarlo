# Generic product
PRODUCT_NAME := rascarlo
PRODUCT_BRAND := rascarlo
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1
    camera.flash_off=0

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rascarlo/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/rascarlo/overlay/dictionaries

# Koush superuser
SUPERUSER_EMBEDDED := true

# User interface device specific
# dual pane
ifneq ($(filter rascarlo_emulator rascarlo_grouper rascarlo_maguro rascarlo_maguro_en rascarlo_mako rascarlo_mako_en rascarlo_toro,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGE_OVERLAYS += vendor/rascarlo/overlay/specific/user_interface/dual_pane
endif

# system/lib
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/rascarlo/proprietary/common/lib/libjni_filtershow_filters.so:system/lib/libjni_filtershow_filters.so \
    vendor/rascarlo/proprietary/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so

# system/vendor/etc
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/common/vendor/etc/smc_normal_world_android_cfg.ini:system/vendor/etc/smc_normal_world_android_cfg.ini

# system/vendor/firmware
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/common/vendor/firmware/smc_pa_wvdrm.ift:system/vendor/firmware/smc_pa_wvdrm.ift

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
