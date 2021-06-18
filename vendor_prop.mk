#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
    persist.qfp=false \
    ro.hardware.fingerprint=fpc \
    sys.fpc.tu.disabled=0

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qti.sensors.touch_taptap=true
    
# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.fha_enable=true \
    ro.sys.fw.bg_apps_limit=32 \
    ro.config.dha_cached_max=16 \
    ro.config.dha_empty_max=42 \
    ro.config.dha_empty_init=32 \
    ro.config.dha_lmk_scale=0.545 \
    ro.config.dha_th_rate=2.3 \
    ro.config.sdha_apps_bg_max=64 \
    ro.config.sdha_apps_bg_min=8

# JerryMods
PRODUCT_PROPERTY_OVERRIDES += \
  dalvik.vm.boot-dex2oat-threads=4 \
  dalvik.vm.dex2oat-threads=4 \
  dalvik.vm.image-dex2oat-threads=4 \
  debug.generate-debug-info=false \
  ro.sys.sdcardfs=true \
  persist.vendor.qti.inputopts.enable=true \
  persist.vendor.qti.inputopts.movetouchslop=0.6
