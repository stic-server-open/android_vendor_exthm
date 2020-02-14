# APEX
ifneq ($(filter RELEASE NIGHTLY SNAPSHOT EXPERIMENTAL,$(EXTHM_BUILDTYPE)),)
    TARGET_FLATTEN_APEX := true
endif

# Charger
ifeq ($(WITH_LINEAGE_CHARGER),true)
    BOARD_HAL_STATIC_LIBRARIES := libhealthd.lineage
endif

include vendor/exthm/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/exthm/config/BoardConfigQcom.mk
endif

include vendor/exthm/config/BoardConfigSoong.mk
