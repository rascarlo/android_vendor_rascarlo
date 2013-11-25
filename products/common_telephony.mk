# Build SimToolKit
PRODUCT_PACKAGES += \
    Stk

# World APN list from CM
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/common/system/etc/apns-conf.xml:system/etc/apns-conf.xml
