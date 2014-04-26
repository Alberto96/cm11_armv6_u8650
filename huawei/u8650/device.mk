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

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := huawei_u8650
PRODUCT_DEVICE := u8650
PRODUCT_MODEL := Huawei u8650

# Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    gralloc.msm7x27 \
    copybit.msm7x27


# OpenSSH
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh


# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.opengles.surface.rgb565=true \
    com.qc.hardware=true \
    debug.enabletr=false \
    debug.hwui.render_dirty_regions=false \
    debug.qctwa.statusbar=1 \
    debug.qctwa.preservebuf=1 \
    hwui.print_config=choice \
    persist.sys.strictmode.visual=false \
    ro.bq.gpu_to_cpu_unsupported=1

# Stagefright
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=false \
    media.stagefright.enable-scan=false \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true

# Audio
PRODUCT_PACKAGES += \
    audio_policy.msm7x27 \
    audio.primary.msm7x27 \
    audio.a2dp.default \
    libaudioutils

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Zram
PRODUCT_PACKAGES += \
    hwprops \
    rzscontrol

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# Graphics & Media
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt

# Camera
PRODUCT_PACKAGES += \
        camera.msm7x27

# Camcorder
PRODUCT_PROPERTY_OVERRIDES += \
    debug.camcorder.disablemeta=1

# WebKit
PRODUCT_PACKAGES += \
    libwebcore

# Webkit (classic webview provider)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.webview.provider=classic

# SELinux - we're not ready for enforcing mode yet
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.selinux=permissive

BOARD_SEPOLICY_DIRS += \
     device/huawei/u8650/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heaptargetutilization=0.25 \
    dalvik.vm.jit.codecachesize=0

# Memory
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true

# Other
PRODUCT_PACKAGES += \
    lights.msm7x27 \
    librpc \
    gps.default

# Other
PRODUCT_PACKAGES += \
    dexpreopt

# Live Wallpapers
PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

#PRODUCT_PROPERTY_OVERRIDES += \
   # wifi.ap.interface=wl0.1

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    libnetcmdiface

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Etc config
PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/huawei/u8650/prebuilt/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/huawei/u8650/prebuilt/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/huawei/u8650/prebuilt/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/huawei/u8650/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/init.huawei.rc:root/init.huawei.rc \
    device/huawei/u8650/prebuilt/init.swapart.rc:root/init.swapart.rc \
    device/huawei/u8650/prebuilt/ueventd.huawei.rc:root/ueventd.huawei.rc \
    device/huawei/u8650/prebuilt/init.qcom.bluetooth.rc:root/init.qcom.bluetooth.rc \
    device/huawei/u8650/prebuilt/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/huawei/u8650/prebuilt/init.rc:root/init.rc

# u8650 bluetooth vendor configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf


# u8650 init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.u8650:root/fstab.u8650

# Init files
#PRODUCT_COPY_FILES += \
#       device/huawei/u8650/prebuilt/root/init:root/init \
#      device/huawei/u8650/prebuilt/root/init.huawei.rc:root/init.huawei.rc \
#     device/huawei/u8650/prebuilt/root/init.rc:root/init.rc \
#    device/huawei/u8650/prebuilt/root/ueventd.rc:root/ueventd.rc

# Wi-Fi releated
PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/etc/nvram.txt:system/etc/nvram.txt \
    device/huawei/u8650/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8650/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/u8650/prebuilt/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/huawei/u8650/prebuilt/etc/firmware.bin:system/etc/firmware.bin \
    device/huawei/u8650/prebuilt/etc/firmware_apsta.bin:system/etc/firmware_apsta.bin \
    
# Audio
PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/huawei/u8650/prebuilt/etc/start_usb0.sh:system/etc/start_usb0.sh

#u8650_SPEAKER_IN_CALL_FIX
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# ksgl
PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/huawei/u8650/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv

# Kernel modules
#PRODUCT_COPY_FILES += \
#   device/huawei/u8650/prebuilt/lib/modules/zram.ko:system/lib/modules/zram.ko

# Development settings
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.debuggable=1 \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    persist.service.adb.enable=1

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Default heap settings for 512mb device
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Ensure that /cache is never used for deodexing
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh 

# Bluedroid: rc
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/bluetooth/init.qcom.bluedroid.rc:root/init.qcom.bluetooth.rc

## swapart binary
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/swapart:system/bin/swapart

# Touchscreen
PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/u8650/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/huawei/u8650/prebuilt/usr/idc/cypress-ts-innolux_Ver04.idc:system/usr/idc/cypress-ts-innolux_Ver04.idc \
    device/huawei/u8650/prebuilt/usr/idc/7k_handset.idc:system/usr/idc/7k_handset.idc \
    device/huawei/u8650/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/huawei/u8650/prebuilt/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/huawei/u8650/prebuilt/usr/idc/kp_test_input.idc:system/usr/idc/kp_test_input.idc \
    device/huawei/u8650/prebuilt/usr/idc/surf_keypad.idc:system/usr/idc/surf_keypad.idc \
    device/huawei/u8650/prebuilt/usr/idc/touchscreen-keypad.idc:system/usr/idc/touchscreen-keypad.idc \
    device/huawei/u8650/prebuilt/usr/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
    device/huawei/u8650/prebuilt/usr/idc/ts_test_input.idc:system/usr/idc/ts_test_input.idc \
    device/huawei/u8650/prebuilt/usr/idc/sensors.idc:system/usr/idc/sensors.idc \
    device/huawei/u8650/prebuilt/usr/keylayout/synaptics.kl:system/usr/keylayout/synaptics.kl \
    device/huawei/u8650/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/huawei/u8650/prebuilt/usr/keylayout/cypress-ts-innolux_Ver04.kl:system/usr/keylayout/cypress-ts-innolux_Ver04.kl \
    device/huawei/u8650/prebuilt/usr/keylayout/melfas-touchscreen.Ver23.kl:system/usr/keylayout/melfas-touchscreen.Ver23.kl \
    device/huawei/u8650/prebuilt/usr/keylayout/melfas-touchscreen_ver23.kl:system/usr/keylayout/melfas-touchscreen_ver23.kl \
    device/huawei/u8650/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.camera=msm7x27 \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r6 \
    ro.setupwizard.enable_bypass=1 \
    ro.telephony.call_ring.multiple=false

PRODUCT_PROPERTY_OVERRIDES += \
    debug.gr.numframebuffers=3

# Install/Uninstall google apps
$(call inherit-product, vendor/google/gapps_armv6_tiny.mk)

# Common assets
PRODUCT_LOCALES += mdpi
PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_LOCALES := en_US en_IN fr_FR it_IT es_ES et_EE de_DE nl_NL cs_CZ pl_PL ja_JP \
    zh_TW zh_CN zh_HK ru_RU ko_KR nb_NO es_US da_DK el_GR tr_TR pt_PT pt_BR rm_CH sv_SE \
    bg_BG ca_ES en_GB fi_FI hr_HR hu_HU in_ID lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS uk_UA \
    vi_VN tl_PH sw_TZ ms_MY af_ZA zu_ZA en_XA ar_XB fr_CA mn_MN az_AZ

