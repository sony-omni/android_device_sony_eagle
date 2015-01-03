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

include device/sony/msm8226-common/BoardConfig.mk

TARGET_SPECIFIC_HEADER_PATH += device/sony/eagle/include

TARGET_BOOTLOADER_BOARD_NAME := D2303

# Kernel properties
TARGET_KERNEL_CONFIG := eagle_lte_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := D2303,eagle,eagle_lte

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1962934272
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5461000192

# Eagle Camera
USE_CAMERA_STUB := true

# WiFi
WLAN_MODULES:
	mkdir -p $(KERNEL_MODULES_OUT)/pronto
	mv $(KERNEL_MODULES_OUT)/wlan.ko $(KERNEL_MODULES_OUT)/pronto/pronto_wlan.ko
	ln -sf /system/lib/modules/pronto/pronto_wlan.ko $(TARGET_OUT)/lib/modules/wlan.ko
TARGET_KERNEL_MODULES += WLAN_MODULES

# Recovery
TARGET_RECOVERY_FSTAB := device/sony/eagle/rootdir/fstab.yukon
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# TWRP flags
DEVICE_RESOLUTION := 540x960
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INCLUDE_JB_CRYPTO := false
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_INCLUDE_L_CRYPTO := true
TW_NO_USB_STORAGE := true

# Releasetools
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
