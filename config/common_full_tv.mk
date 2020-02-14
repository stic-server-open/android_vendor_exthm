# Exclude AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# Inherit full common exTHm stuff
$(call inherit-product, vendor/exthm/config/common_full.mk)

# Inherit exTHm atv device tree
$(call inherit-product, device/lineage/atv/lineage_atv.mk)

PRODUCT_PACKAGES += \
    AppDrawer \
    LineageCustomizer

DEVICE_PACKAGE_OVERLAYS += vendor/exthm/overlay/tv
