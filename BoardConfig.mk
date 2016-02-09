
#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

BOARD_VENDOR                       := Dakele

MC002_PATH                         := device/Dakele/MC002

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME       := MT6589
TARGET_NO_BOOTLOADER               := true

# Platform
TARGET_BOARD_PLATFORM              := mt6589

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
# Kernel
BOARD_KERNEL_CMDLINE               := 
BOARD_KERNEL_BASE                  := 0x10000000
BOARD_KERNEL_PAGESIZE              := 2048
BOARD_MKBOOTIMG_ARGS               := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_PREBUILT_KERNEL             := $(MC002_PATH)/kernel

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x2780000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x2780000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x4780000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x34f80000
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_FLASH_BLOCK_SIZE             := 131072
BOARD_USES_MMCUTILS                := true

# Recovery
TARGET_RECOVERY_FSTAB              := $(MC002_PATH)/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT       := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON         := true
TARGET_PREBUILT_RECOVERY_KERNEL    := $(MC002_PATH)/kernel

# TWRP recovery
DEVICE_RESOLUTION                  := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH   := true
TW_NO_EXFAT                        := true
TW_INCLUDE_CRYPTO                  := true
RECOVERY_VARIANT                   := twrp
TW_NO_REBOOT_BOOTLOADER            := true
TW_INTERNAL_STORAGE_PATH           := "/storage/sdcard0"
TW_INTERNAL_STORAGE_MOUNT_POINT    := "sdcard"
TW_INTERNAL_STORAGE_PATH           := "/storage/sdcard1"
TW_INTERNAL_STORAGE_MOUNT_POINT    := "sdcard1"
# inherit from the proprietary version
-include vendor/Dakele/MC002/BoardConfigVendor.mk
