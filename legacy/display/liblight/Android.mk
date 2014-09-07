LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_PROVIDES_LIBLIGHTS),true)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_SRC_FILES        := lights.c
LOCAL_MODULE           := lights.msm8660
LOCAL_MODULE_PATH      := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE_TAGS      := optional
include $(BUILD_SHARED_LIBRARY)

endif
