# Blobs necessary for media effects

# media effects
PRODUCT_COPY_FILES +=  \
    vendor/rascarlo/proprietary/common/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/rascarlo/proprietary/common/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

# video files
$(call inherit-product-if-exists, frameworks/base/data/videos/VideoPackage2.mk)
