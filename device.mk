#
# Copyright (C) 2017-2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# call the proprietary setup
$(call inherit-product, vendor/xiaomi/scorpio/scorpio-vendor.mk)

# Vendor properties
-include $(LOCAL_PATH)/vendor_prop.mk

# Local overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tasha.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tasha.xml

# Consumer IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-service.xiaomi

# ConfigPanel
PRODUCT_PACKAGES += \
    ConfigPanel

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-fpc.idc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/atmel-maxtouch.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/atmel-maxtouch.kl \
    $(LOCAL_PATH)/keylayout/cyttsp_button.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/cyttsp_button.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_PRODUCT)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf


# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8996-lite.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-8996-lite.conf \
    $(LOCAL_PATH)/configs/thermal-engine-8996.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-8996.conf \
    $(LOCAL_PATH)/configs/thermal-engine-8996_gaming.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-8996_gaming.conf \
    $(LOCAL_PATH)/configs/thermal-engine-8996_battery.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-8996_battery.conf

#Qcom Support
PRODUCT_BOARD_PLATFORM := msm8996
PRODUCT_USES_QCOM_HARDWARE := true

# Camera
PRODUCT_PACKAGES += \
    Camera2 


# Jerry Kernel Profiles
PRODUCT_PACKAGES += \
    init.Jerry.rc \
    init.spectrum.rc \
    init.spectrum.sh
    
# Inherit from msm8996-common
$(call inherit-product, device/xiaomi/msm8996-common/msm8996.mk)
