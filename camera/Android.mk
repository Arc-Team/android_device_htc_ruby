LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := libhardware liblog libcamera_client libutils
LOCAL_SRC_FILES        := CameraWrapper.cpp
LOCAL_MODULE           := camera.msm8660
LOCAL_MODULE_PATH      := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE_TAGS      := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES :=
LOCAL_SRC_FILES        :=
LOCAL_MODULE           := libsurfaceflinger_client
LOCAL_MODULE_TAGS      := optional
include $(BUILD_SHARED_LIBRARY)
