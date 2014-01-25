LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := conceal
LOCAL_CFLAGS    := -Werror
LOCAL_SRC_FILES := gcm.c gcm_util.c hmac.c hmac_util.c init.c util.c
LOCAL_LDLIBS    := -llog

LOCAL_SHARED_LIBRARIES += libcryptox
include $(BUILD_SHARED_LIBRARY)

$(call import-module,cryptox)
