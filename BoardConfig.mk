# Vendor
BOARD_VENDOR := htc
TARGET_SPECIFIC_HEADER_PATH := device/htc/ruby/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := ruby
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := scorpion
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_PAGE_SIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL3 androidboot.hardware=ruby no_console_suspend=1 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
TARGET_KERNEL_SOURCE := kernel/htc/ruby
TARGET_KERNEL_CONFIG := ruby_defconfig

# QCOM
BOARD_USES_QCOM_HARDWARE := true
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_MEDIA_VARIANT := caf
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DHTCLOG

# Audio
BOARD_QCOM_TUNNEL_LPA_ENABLED := false
BOARD_USES_LEGACY_ALSA_AUDIO := true
BOARD_QCOM_VOIP_ENABLED := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_CAMCORDER := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
COMMON_GLOBAL_CFLAGS += -DHTC_ACOUSTIC_AUDIO 
COMMON_GLOBAL_CFLAGS += -DLEGACY_QCOM_VOICE

# Bluetooth
BOARD_WPAN_DEVICE := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_TI := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/ruby/bluetooth

# GPS
BOARD_HAVE_NEW_QC_GPS := true
TARGET_PROVIDES_GPS_LOC_API := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := ruby

# Graphics
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true
TARGET_USES_C2D_COMPOSITION := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
BOARD_EGL_CFG := device/htc/ruby/prebuilt/lib/egl/egl.cfg

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
COMMON_GLOBAL_CFLAGS += -DHTC_CAMERA_HARDWARE
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# Wifi
USES_TI_MAC80211 := true
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_WLAN_DEVICE := wl12xx_mac80211
BOARD_SOFTAP_DEVICE := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wl12xx_sdio.ko"
WIFI_DRIVER_MODULE_NAME := "wl12xx_sdio"
WIFI_FIRMWARE_LOADER := ""
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211

WLAN_MODULES:
	make clean -C hardware/ti/wlan/mac80211/compat_wl12xx
	make -j8 -C hardware/ti/wlan/mac80211/compat_wl12xx KERNEL_DIR=$(KERNEL_OUT) KLIB=$(KERNEL_OUT) KLIB_BUILD=$(KERNEL_OUT) ARCH=arm CROSS_COMPILE="arm-eabi-"
	mv hardware/ti/wlan/mac80211/compat_wl12xx/compat/compat.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/net/mac80211/mac80211.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/net/wireless/cfg80211.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/drivers/net/wireless/wl12xx/wl12xx.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/drivers/net/wireless/wl12xx/wl12xx_spi.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/drivers/net/wireless/wl12xx/wl12xx_sdio.ko $(KERNEL_MODULES_OUT)

TARGET_KERNEL_MODULES += WLAN_MODULES

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610611712
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2684354048
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 36

# Recovery
USE_SET_METADATA := false
TARGET_RECOVERY_PIXEL_FORMAT := "BGRX_8888"
TARGET_RECOVERY_FSTAB := device/htc/ruby/rootdir/fstab.ruby

# CWM
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"

# TWRP
BOARD_HAS_NO_REAL_SDCARD := false
HAVE_SELINUX := true
DEVICE_RESOLUTION := 540x960
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_INCLUDE_JB_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness

# QCOM BSP
#TARGET_USES_QCOM_BSP := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Boot-animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true
TARGET_PROVIDES_LIBLIGHTS := true

# Power
TARGET_POWERHAL_VARIANT := ruby

# FB legacy
#BOARD_EGL_NEEDS_LEGACY_FB := true

# OpenGL
#BOARD_EGL_WORKAROUND_BUG_10194508 := true

# FM
TARGET_PROVIDES_TI_FM_SERVICE := true

# NFC
BOARD_HAVE_NFC := true

# Libril
BOARD_USES_LEGACY_RIL := true

# SELinux
BOARD_SEPOLICY_DIRS += device/htc/ruby/sepolicy

BOARD_SEPOLICY_UNION += \
    app.te \
    bluetooth.te \
    device.te \
    domain.te \
    drmserver.te \
    file.te \
    file_contexts \
    files \
    hci_init.te \
    healthd.te \
    init.te \
    init_shell.te \
    keystore.te \
    kickstart.te \
    mediaserver.te \
    netd.te \
    rild.te \
    surfaceflinger.te \
    system.te \
    ueventd.te \
    untrusted_app.te \
    vold.te \
    wpa.te \
    wpa_socket.te

# Hardware tunables
BOARD_HARDWARE_CLASS := device/htc/ruby/cmhw

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/ruby/overlay

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"
