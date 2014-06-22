LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE           := power.msm8660
LOCAL_MODULE_TAGS      := optional
LOCAL_SRC_FILES        := power.c
LOCAL_SHARED_LIBRARIES := liblog libcutils
LOCAL_MODULE_PATH      := $(TARGET_OUT_SHARED_LIBRARIES)/hw
include $(BUILD_SHARED_LIBRARY)
