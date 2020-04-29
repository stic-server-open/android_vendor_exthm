# Inherit common exTHm stuff
$(call inherit-product, vendor/exthm/config/common_mobile.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
