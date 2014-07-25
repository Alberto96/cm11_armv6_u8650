# Copyright (C) 2011 The Android Open Source Project
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

#
# This file sets variables that control the way modules are built
# throughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
# The proprietary variant sets USE_CAMERA_STUB := false, this way
# we use the camera stub when the vendor tree isn't present, and
# the true camera library when the vendor tree is available.
# Camera
USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/huawei/u8650/BoardConfigVendor.mk

#TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8650/include
TARGET_SPECIFIC_HEADER_PATH += device/huawei/u8650/include

# ARMv6-compatible processor rev 5 (v6l)
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := u8650
TARGET_OTA_ASSERT_DEVICE := u8650,U8650,Sonic,sonic

# Target
TARGET_ARCH            := arm
TARGET_ARCH_LOWMEM     := true
TARGET_ARCH_VARIANT    := armv6-vfp
TARGET_BOARD_PLATFORM  := msm7x27
TARGET_CPU_ABI         := armeabi
TARGET_CPU_ABI2        := armeabi-v6l
TARGET_CPU_VARIANT     := arm11
TARGET_NO_BOOTLOADER   := true
TARGET_NO_RADIOIMAGE   := true
COMMON_GLOBAL_CFLAGS   += -DTARGET_MSM7x27

# For assembly error
#COMMON_GLOBAL_CFLAGS   += --save-temps

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/huawei/u8650/bluetooth/libbt_hwi.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/u8650/bluetooth

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_FM_DEVICE := bcm4329
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

BOARD_VENDOR_USE_AKMD := akm8975

# GPS NEW
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Camera
TARGET_DISABLE_ARM_PIE          := true
BOARD_NEEDS_MEMORYHEAPPMEM      := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true

# Webkit
ENABLE_WEBGL := true

#RIL
BOARD_PROVIDES_LIBRIL := true

#Mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file

# ICS Stuff 
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Audio
BOARD_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := false
BOARD_COMBO_DEVICE_SUPPORTED := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Target libs check
TARGET_PROVIDES_LIBRIL := true

# QCOM
BOARD_USES_QCOM_LIBRPC := true
TARGET_GRALLOC_USES_ASHMEM := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE                := true
BOARD_USES_QCOM_LIBS                    := true
COMMON_GLOBAL_CFLAGS                    += -DQCOM_HARDWARE
#COMMON_GLOBAL_CFLAGS                    += -DQCOM_ICS_COMPAT

# Video
TARGET_QCOM_LEGACY_OMX                  := true
TARGET_QCOM_MEDIA_VARIANT               := legacy
TARGET_ENABLE_QC_AV_ENHANCEMENTS        := true
COMMON_GLOBAL_CFLAGS                    += -DQCOM_NO_SECURE_PLAYBACK

# Graphics
USE_OPENGL_RENDERER                     := true
TARGET_NO_HW_OVERLAY                    := true
TARGET_QCOM_DISPLAY_VARIANT             := legacy
BOARD_ADRENO_DECIDE_TEXTURE_TARGET      := true
BOARD_EGL_CFG                           := device/huawei/u8650/prebuilt/lib/egl/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB               := true
BOARD_EGL_WORKAROUND_BUG_10194508       := true
BOARD_USE_MHEAP_SCREENSHOT              := true

# Squisher
TARGET_SYSTEMIMAGE_USE_SQUISHER := true

## Minimal fonts
SMALLER_FONT_FOOTPRINT := true
#MINIMAL_FONT_FOOTPRINT := true

# CPU
TARGET_FORCE_CPU_UPLOAD := true
COMMON_GLOBAL_CFLAGS += -DFORCE_CPU_UPLOAD

## Browser & WebKit
ENABLE_WEBGL := true

# WiFI
#WPA_BUILD_SUPPLICANT             := true
USE_LEGACY_SOFTAP                := true
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE                := bcm4329
WIFI_BAND                        := 802_11_ABG
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware_apsta.bin"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/firmware.bin nvram_path=/system/etc/nvram.txt"
WIFI_DRIVER_MODULE_NAME          := "dhd"

P500_SPEAKER_IN_CALL_FIX := true

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8650/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/u8650/recovery/kernel
TARGET_RECOVERY_FSTAB := device/huawei/u8650/fstab.huawei
BOARD_HAS_NO_SELECT_BUTTON := true

# Kernel
TARGET_KERNEL_SOURCE := device/huawei/u8650/kernel
TARGET_KERNEL_CONFIG := u8650_Lucky_defconfig
TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8650/include
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
BOARD_KERNEL_BASE := 0x10200000
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_KERNEL_PAGESIZE := 2048

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 0ba00000 00020000 "system"
# mtd5: 05d00000 00020000 "cache"
# mtd6: 0a0a0000 00020000 "userdata"
# mtd7: 01400000 00020000 "cust"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0ba00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a0a0000
BOARD_FLASH_BLOCK_SIZE := 131072

# Javascript, Browser and Webkit
WITH_JIT                := true
ENABLE_JSC_JIT          := true
JS_ENGINE               := v8
HTTP                    := chrome
TARGET_FORCE_CPU_UPLOAD := true

## TEMPORARY HACK: skip building external/chromium_org/
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# Releasetools extras
TARGET_OTA_EXTRAS_FILE := device/huawei/u8650/releasetools-extras.txt
