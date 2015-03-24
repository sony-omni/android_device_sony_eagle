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
BUILD_WITH_KERNEL_310 := true

# Assert
TARGET_OTA_ASSERT_DEVICE := D2303,eagle,eagle_lte

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1962934272
#Reserve space for data encryption (5461000192-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5460983808

# Eagle Camera
USE_CAMERA_STUB := false

# Memory management
MALLOC_IMPL := dlmalloc

# Logd
TARGET_USES_LOGD := false

# Recovery
TARGET_RECOVERY_FSTAB := device/sony/eagle/rootdir/fstab.yukon
RECOVERY_FSTAB_VERSION := 2
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP flags
DEVICE_RESOLUTION := 540x960
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_NO_USB_STORAGE := true
TW_INCLUDE_JB_CRYPTO := false
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_INCLUDE_L_CRYPTO := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
