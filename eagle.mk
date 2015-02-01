# Copyright 2014 The Android Open Source Project
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

# Include others
$(call inherit-product, device/sony/msm8226-common/device.mk)
$(call inherit-product, vendor/sony/eagle/eagle-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, device/qcom/sepolicy/sepolicy.mk)

DEVICE_PACKAGE_OVERLAYS += device/sony/eagle/overlay

PRODUCT_COPY_FILES += \
    device/sony/eagle/rootdir/logo.rle:root/logo.rle \
    device/sony/eagle/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/sony/eagle/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/eagle/rootdir/system/etc/sap.conf:system/etc/sap.conf \
    device/sony/eagle/rootdir/system/etc/sec_config:system/etc/sec_config \
    device/sony/eagle/rootdir/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/sony/eagle/rootdir/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    device/sony/eagle/rootdir/fstab.yukon:root/fstab.yukon \
    device/sony/eagle/rootdir/twrp.fstab:root/twrp.fstab \
    device/sony/eagle/rootdir/init.yukon.dev.rc:root/init.yukon.dev.rc

#Camera
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.gestures.camera=false \
    camera2.portability.force_api=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

#Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# M2 LTE specific ril properties
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnGsmDevice=1 \
    ro.telephony.default_network=9 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.add_power_save=1 \
    persist.radio.mode_pref_nv10=1 \
    persist.radio.snapshot_enabled=1 \
    persist.radio.snapshot_timer=2
