# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Release name
PRODUCT_RELEASE_NAME := MC002

# Inherit device configuration
$(call inherit-product, device/Dakele/MC002/MC002.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := MC002
PRODUCT_NAME := cm_MC002
PRODUCT_BRAND := Dakele
PRODUCT_MODEL := Dakele MC002
PRODUCT_MANUFACTURER := Dakele
