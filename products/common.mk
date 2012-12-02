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

# Supersu
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/rascarlo/proprietary/common/xbin/su:system/xbin/su

# system/app
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/common/app/BrowserProviderProxy.apk:system/app/BrowserProviderProxy.apk \
    vendor/rascarlo/proprietary/common/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/rascarlo/proprietary/common/app/EmailGoogle.apk:system/app/EmailGoogle.apk \
    vendor/rascarlo/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/rascarlo/proprietary/common/app/Gmail.apk:system/app/Gmail.apk \
    vendor/rascarlo/proprietary/common/app/GmsCore.apk:system/app/GmsCore.apk \
    vendor/rascarlo/proprietary/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/rascarlo/proprietary/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/rascarlo/proprietary/common/app/GoogleEars.apk:system/app/GoogleEars.apk \
    vendor/rascarlo/proprietary/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/rascarlo/proprietary/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/rascarlo/proprietary/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/rascarlo/proprietary/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/rascarlo/proprietary/common/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/rascarlo/proprietary/common/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
    vendor/rascarlo/proprietary/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/rascarlo/proprietary/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/rascarlo/proprietary/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/rascarlo/proprietary/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/rascarlo/proprietary/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/rascarlo/proprietary/common/app/Talk.apk:system/app/Talk.apk \
    vendor/rascarlo/proprietary/common/app/VideoEditor.apk:system/app/VideoEditor.apk

# system/etc/permissions
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/rascarlo/proprietary/common/etc/permissions/features.xml:system/etc/permissions/features.xml

# system/framework
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar

# system/lib
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/common/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
    vendor/rascarlo/proprietary/common/lib/libgoogle_recognizer_jni.so:system/lib/libgoogle_recognizer_jni.so \
    vendor/rascarlo/proprietary/common/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so \
    vendor/rascarlo/proprietary/common/lib/libgtalk_stabilize.so:system/lib/libgtalk_stabilize.so \
    vendor/rascarlo/proprietary/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/rascarlo/proprietary/common/lib/libjni_filtershow_filters.so:system/lib/libjni_filtershow_filters.so \
    vendor/rascarlo/proprietary/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/rascarlo/proprietary/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/rascarlo/proprietary/common/lib/liblightcycle.so:system/lib/liblightcycle.so \
    vendor/rascarlo/proprietary/common/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
    vendor/rascarlo/proprietary/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/rascarlo/proprietary/common/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so

# system/vendor/etc
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/common/vendor/etc/smc_normal_world_android_cfg.ini:system/vendor/etc/smc_normal_world_android_cfg.ini

# system/vendor/firmware
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/common/vendor/firmware/smc_pa_wvdrm.ift:system/vendor/firmware/smc_pa_wvdrm.ift

ifeq ($(TARGET_BUILD_VARIANT),user)
# Blobs common to all devices except emulator
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/common/app/Gallery2Google.apk:system/app/Gallery2Google.apk
endif

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
