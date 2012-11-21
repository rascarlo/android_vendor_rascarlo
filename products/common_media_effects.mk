# Blobs necessary for media effects

# system/etc/permissions
PRODUCT_COPY_FILES +=  \
    vendor/rascarlo/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml

# system/framework
PRODUCT_COPY_FILES +=  \
    vendor/rascarlo/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar

# system/lib
PRODUCT_COPY_FILES +=  \
    vendor/rascarlo/proprietary/common/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so

# system/media
PRODUCT_COPY_FILES +=  \
    vendor/rascarlo/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/rascarlo/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# video files
$(call inherit-product-if-exists, frameworks/base/data/videos/VideoPackage2.mk)
