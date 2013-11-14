# Generic product
PRODUCT_NAME := rascarlo
PRODUCT_BRAND := rascarlo
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Overlays common to all devices except emulator
ifeq ($(TARGET_BUILD_VARIANT),user)
# Build Launcher 3
PRODUCT_PACKAGES += \
    Launcher3
endif

# Overlays common to all devices with telephony
ifeq ($(filter rascarlo_mako rascarlo_hammerhead,$(TARGET_PRODUCT)),)
# Build SimToolKit
PRODUCT_PACKAGES += \
    Stk
endif

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rascarlo/overlay/common

# Latin IME lib
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/common/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
