LOCAL_PATH:= $(call my-dir)
# Jerry Mods

include $(CLEAR_VARS)
LOCAL_MODULE       := init.Jerry.rc
LOCAL_MODULE_TAGS  := optional 
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.Jerry.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.spectrum.rc
LOCAL_MODULE_TAGS  := optional 
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.spectrum.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.spectrum.sh
LOCAL_MODULE_TAGS  := optional 
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.spectrum.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
