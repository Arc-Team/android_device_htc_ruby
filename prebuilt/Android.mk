LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE        := libacdbloader
LOCAL_MODULE_OWNER  := htc
LOCAL_SRC_FILES     := lib/libacdbloader.so
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := libacdbmapper
LOCAL_MODULE_OWNER  := htc
LOCAL_SRC_FILES     := lib/libacdbmapper.so
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := libaudioalsa
LOCAL_MODULE_OWNER  := htc
LOCAL_SRC_FILES     := lib/libaudioalsa.so
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := camera.vendor.msm8660
LOCAL_MODULE_OWNER  := htc
LOCAL_SRC_FILES     := lib/hw/camera.vendor.msm8660.so
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
include $(BUILD_PREBUILT)
