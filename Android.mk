LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),G0370WW)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
