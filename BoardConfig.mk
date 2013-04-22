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

USE_CAMERA_STUB := true

# Arch and board related defines
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CORTEX_CACHE_LINE_32 := true

TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# inherit from the proprietary version
-include vendor/htc/golfu/BoardConfigVendor.mk

TARGET_KERNEL_SOURCE := kernel/htc/golfu
TARGET_KERNEL_CONFIG := golfu_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x13000000

TARGET_SPECIFIC_HEADER_PATH := device/htc/golfu/include

# graphics
USE_OPENGL_RENDERER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
BOARD_EGL_CFG := device/htc/golfu/prebuilt/lib/egl/egl.cfg
TARGET_USES_GENLOCK := true
TARGET_USES_OVERLAY := false
TARGET_HAVE_BYPASS := false
TARGET_USES_C2D_COMPOSITION := false
# Allow fallback to ashmem
TARGET_GRALLOC_USES_ASHMEM := true
#BOARD_NO_RGBX_8888 := true
TARGET_BOOTANIMATION_NAME := vertical-320x480

# for camera
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT

# Skia
BOARD_USE_SKIA_LCDTEXT := true
ALLOW_DEQUEUE_CURRENT_BUFFER := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# CPU
TARGET_FORCE_CPU_UPLOAD := true
COMMON_GLOBAL_CFLAGS += -DFORCE_CPU_UPLOAD

# liblights
TARGET_PROVIDES_LIBLIGHTS := true

TARGET_BOOTLOADER_BOARD_NAME := golfu

TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_PROVIDES_INIT_RC := true

#TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

# Browser
JS_ENGINE := v8
HTTP := chrome
ENABLE_WEBGL := true
WITH_JIT := true
ENABLE_JSC_JIT := true
WITH_DEXPREOPT := false

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WLAN_DEVICE           := ath6kl
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/ath6kl_sdio.ko"
WIFI_DRIVER_MODULE_NAME     := "ath6kl_sdio"
WIFI_BAND := 802_11_BG

# audio
TARGET_PROVIDES_LIBAUDIO := true
# configuration taken from CAF: They say msm7x27a variants does not directly supports speaker
BOARD_NO_SPEAKER := true

# Target libs check
BOARD_PROVIDES_LIBRIL := false
BOARD_USE_NEW_LIBRIL_HTC := true

#bluetooth
BOARD_HAVE_BLUETOOTH := true

#fm
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

BOARD_VENDOR_QCOM_AMSS_VERSION := 6225

BOARD_VENDOR_USE_AKMD := akm8975

#BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true

#gps
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := golfu
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# # cat /proc/mtd (golfu)
# dev:    size   erasesize  name
# mmcblk0p17: 00040000 00000200 "misc"
# mmcblk0p21: 0087f400 00000200 "recovery"
# mmcblk0p22: 00400000 00000200 "boot"
# mmcblk0p25: 31dffe00 00000200 "system"
# mmcblk0p28: 0afffe00 00000200 "cache"
# mmcblk0p26: 3cfffe00 00000200 "userdata"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8909824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 836763136
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1023409664
BOARD_FLASH_BLOCK_SIZE := 2048

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p32

# Recovery
TARGET_RECOVERY_INITRC := device/htc/golfu/prebuilt/recovery/init.recovery.rc
BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_10x18.h\"
BOARD_RECOVERY_CHAR_WIDTH := 10
BOARD_RECOVERY_CHAR_HEIGHT := 18

BOARD_HAS_NO_SELECT_BUTTON := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 24
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_otg/msm_hsusb/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_otg/msm_hsusb/gadget/lun0/file"

# Fix for Atmel touchscreens
BOARD_USE_LEGACY_TOUCHSCREEN := true

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

#### TEST ZONE ####

#BOARD_NO_PAGE_FLIPPING := true
#COPYBIT_MSM7K := true
#COMMON_GLOBAL_CFLAGS += -DMISSING_GRALOC_BUFFERS -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_EGL_EXTERNAL_IMAGE
#COMMON_GLOBAL_CFLAGS += -DBOARD_GL_OES_EGL_IMG_EXTERNAL_HACK
WITH_MALLOC_LEAK_CHECK := true
TARGET_USES_SF_BYPASS := false
TARGET_HAVE_BYPASS := false
TARGET_QCOM_HDMI_OUT := false
#BOARD_USE_QCOM_PMEM := true
#BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true

TARGET_OTA_ASSERT_DEVICE := golfu
