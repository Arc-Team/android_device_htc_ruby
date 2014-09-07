LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_SRC_FILES        := memtrack_msm.c kgsl.c
LOCAL_C_INCLUDES       += hardware/libhardware/include
LOCAL_MODULE           := memtrack.msm8660
LOCAL_MODULE_PATH      := $(TARGET_OUT_SHARED_LIBRARIES)/hw
include $(BUILD_SHARED_LIBRARY)
