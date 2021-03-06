LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	abc.c \
	misc.c \
	mail.c \
	hotplug.c

LOCAL_MODULE := abc
LOCAL_MODULE_TAGS := eng
LOCAL_SHARED_LIBRARIES := liblog libselinux libext2_blkid
LOCAL_CFLAGS += -Wno-error

ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3399)
LOCAL_CFLAGS += -DTARGET_BOARD_PLATFORM_RK3399
endif
include $(BUILD_EXECUTABLE)
