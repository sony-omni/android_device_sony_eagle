# Copyright (C) 2014 The CyanogenMod Project
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

# Resolution
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Torch
PRODUCT_PACKAGES := \
    OmniTorch

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Common Sony Resources
$(call inherit-product, device/sony/common/resources.mk)
# Inherit from yuga device
$(call inherit-product, device/sony/eagle/eagle.mk)

# Product attributes
PRODUCT_NAME := omni_eagle
PRODUCT_DEVICE := eagle
PRODUCT_MODEL := Xperia M2
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREBUILT_DPI := hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=D2303 \
    BUILD_FINGERPRINT=Sony/D2303/D2303:4.4.4/18.3.1.C.0.21/2n9_bg:user/release-keys \
    PRIVATE_BUILD_DESC="D2303-user 18.3.1.C.0.21 2n9_bg release-keys"
