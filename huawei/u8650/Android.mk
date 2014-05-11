LOCAL_PATH := $(my-dir)

ifeq ($(TARGET_DEVICE),u8650)
    subdir_makefiles := \
        $(LOCAL_PATH)/libaudio/Android.mk \
        $(LOCAL_PATH)/liblights/Android.mk \
        $(LOCAL_PATH)/libcamera/Android.mk \
        $(LOCAL_PATH)/libpower/Android.mk \
        $(LOCAL_PATH)/libril/Android.mk \
        $(LOCAL_PATH)/bcmdhd_net_iface/Android.mk \
        $(LOCAL_PATH)/recovery/Android.mk \
        $(LOCAL_PATH)/wpa_supplicant_8_lib/Android.mk \
#       $(LOCAL_PATH)/libcopybit/Android.mk \
#       $(LOCAL_PATH)/libgralloc/Android.mk \
#       $(LOCAL_PATH)/libopencorehw/Android.mk \
#       $(LOCAL_PATH)/librpc/Android.mk \
#       $(LOCAL_PATH)/libstagefrighthw/Android.mk
    include $(subdir_makefiles)
endif
