BOARD_VENDOR                       := Dakele

MC002_PATH                         := device/Dakele/MC002

# ReleaseTools
#TARGET_RELEASETOOLS_EXTENSIONS     := $(MC002_PATH)/releasetools

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME       := MT6589
TARGET_NO_BOOTLOADER               := true

# Platform
TARGET_BOARD_PLATFORM              := mt6589
#TARGET_BOARD_PLATFORM_GPU          := POWERVR_SGX544MP

# Architecture
TARGET_ARCH                        := arm
TARGET_ARCH_VARIANT                := armv7-a-neon
TARGET_CPU_ABI                     := armeabi-v7a
TARGET_CPU_ABI2                    := armeabi
TARGET_CPU_SMP                     := true
TARGET_CPU_VARIANT                 := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER         := true

# Init
#TARGET_PROVIDES_INIT_RC            := true
TARGET_USE_CUSTOM_LUN_FILE_PATH     := /sys/class/android_usb/f_mass_storage/lun1/file
# Kernel
BOARD_KERNEL_CMDLINE               := 
BOARD_KERNEL_BASE                  := 0x10000000
BOARD_KERNEL_PAGESIZE              := 2048
BOARD_MKBOOTIMG_ARGS               := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_PREBUILT_KERNEL             := $(MC002_PATH)/kernel
#TARGET_KERNEL_SOURCE               := kernel/Dakele/MC002
#TARGET_KERNEL_ARCH                 := arm
#TARGET_KERNEL_CONFIG               := cm_MC002_defconfig
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x2780000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x2d80000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x4780000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x34f80000
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_FLASH_BLOCK_SIZE             := 131072
BOARD_USES_MMCUTILS                := true
BOARD_HAS_LARGE_FILESYSTEM         := true
# Camera
USE_CAMERA_STUB                    := true

# Bluetooth
BOARD_HAVE_BLUETOOTH               := true

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER        := WEXT
BOARD_P2P_SUPPLICANT_DRIVER        := NL80211
WIFI_DRIVER_MODULE_PATH            := /system/lib/modules/
WIFI_DRIVER_MODULE_NAME            := wlan_mt6628
BOARD_WLAN_DEVICE                  := mt6628
HAVE_CUSTOM_WIFI_DRIVER_2          := true
HAVE_INTERNAL_WPA_SUPPLICANT_CONF  := true
HAVE_CUSTOM_WIFI_HAL               := mediatek
WPA_SUPPLICANT_VERSION             := VER_0_6_X
P2P_SUPPLICANT_VERSION             := VER_0_8_X

# Sensors
BOARD_VENDOR_USE_AKMD              := true
BOARD_VENDOR_USE_AKMD              := akmd8963

#EGL configuration
BOARD_EGL_CFG                      := $(MC002_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER                := true

# Recovery
TARGET_RECOVERY_FSTAB              := $(MC002_PATH)/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT       := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON         := true
TARGET_PREBUILT_RECOVERY_KERNEL    := $(MC002_PATH)/kernel

# TWRP recovery
TARGET_RECOVERY_INITRC             := $(MC002_PATH)/rootdir/init.rc
DEVICE_RESOLUTION                  := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH   := true
TW_NO_EXFAT                        := true
TW_INCLUDE_CRYPTO                  := true
RECOVERY_VARIANT                   := twrp
TW_NO_REBOOT_BOOTLOADER            := true
TW_INTERNAL_STORAGE_PATH           := "/storage/sdcard0"
TW_INTERNAL_STORAGE_MOUNT_POINT    := "sdcard"
TW_INTERNAL_STORAGE_PATH           := "/storage/sdcard2"
TW_INTERNAL_STORAGE_MOUNT_POINT    := "sdcard2"
# inherit from the proprietary version
-include vendor/Dakele/MC002/BoardConfigVendor.mk
