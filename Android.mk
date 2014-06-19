
ifeq ($(TARGET_DEVICE),ruby)
    include $(call all-makefiles-under,$(call my-dir))
endif
