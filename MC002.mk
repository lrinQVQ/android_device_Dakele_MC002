LOCAL_PATH := device/Dakele/MC002

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/Dakele/MC002/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Recovey
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/rootdir/root/sec.ko:recovery/root/sec.ko \

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/etc/audio_effects.conf \

$(call inherit-product, build/target/product/full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/Dakele/MC002/MC002-vendor.mk)
