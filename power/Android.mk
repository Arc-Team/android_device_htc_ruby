LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_POWERHAL_VARIANT),ruby)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := liblog libcutils libdl
LOCAL_SRC_FILES        := power.c metadata-parser.c utils.c list.c hint-data.c
LOCAL_MODULE           := power.msm8660
LOCAL_MODULE_PATH      := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/hw
LOCAL_MODULE_TAGS      := optional
include $(BUILD_SHARED_LIBRARY)

endif
