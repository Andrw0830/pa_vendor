# Inherit device configuration
$(call inherit-product, device/samsung/hero2lte/hero2lte.mk)
$(call inherit-product, device/samsung/hero-common/hero-common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := pa_hero2lte
PRODUCT_DEVICE := hero2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G935F
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Paranoid Android platform
include vendor/pa/main.mk
