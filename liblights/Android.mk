ifeq ($(TARGET_PROVIDES_LIBLIGHTS),true)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE           := lights.msm8660
LOCAL_MODULE_TAGS      := optional
LOCAL_SRC_FILES        := lights.c
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE_PATH      := $(TARGET_OUT_SHARED_LIBRARIES)/hw
include $(BUILD_SHARED_LIBRARY)

endif
