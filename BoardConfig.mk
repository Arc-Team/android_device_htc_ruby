# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from msm8660-common
-include device/htc/ruby/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := ruby

# Kernel
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_CMDLINE := console=ttyHSL3 androidboot.hardware=ruby no_console_suspend=1
BOARD_KERNEL_PAGE_SIZE := 2048
TARGET_KERNEL_CONFIG := ruby_defconfig

# TI Chip
-include device/htc/ruby/ti_chip.mk

# QCOM GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := ruby

# AUDIO
BOARD_USES_FLUENCE_INCALL := true  # use DMIC in call only
BOARD_USES_SEPERATED_AUDIO_INPUT := true  # use distinct voice recognition use case
BOARD_USES_SEPERATED_CAMCORDER := true  # use distinct camcorder use cases
BOARD_USES_SEPERATED_VOICE_SPEAKER := true  # use distinct voice speaker use case

# NFC
BOARD_HAVE_NFC := true

# Use libril in the device tree
BOARD_PROVIDES_LIBRIL := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610611712
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2684354048
BOARD_FLASH_BLOCK_SIZE := 131072

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# Recovery
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_FSTAB = device/htc/ruby/ramdisk/fstab.ruby
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
RECOVERY_FSTAB_VERSION := 2
