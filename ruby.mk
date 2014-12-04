# Inherit
$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, hardware/ti/wpan/ti-wpan-products.mk)

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8660 \
    audio.primary.msm8660 \
    audio.usb.default \
    libaudio-resampler \
    audio_policy.conf \
    libaudioutils

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    memtrack.msm8660 \
    hwcomposer.msm8660 \
    lights.msm8660 \
    libgenlock \
    libmemalloc \
    libqdutils \
    libtilerenderer

# OMX
PRODUCT_PACKAGES += \
    libdashplayer \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw \
    libOmxQcelp13Enc \
    libOmxEvrcEnc \
    libOmxAmrEnc

# MSM8660
PRODUCT_PACKAGES += \
    camera.msm8660 \
    power.msm8660 \
    gps.ruby

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.ruby \
    init.ruby.sh \
    init.ruby.rc \
    init.ruby.usb.rc \
    ueventd.ruby.rc

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.ruby.rc \
    choice_fn \
    power_test \
    offmode_charging \
    detect_key \
    htcbatt \
    twrp.fstab

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Filesystem
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Wi-Fi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    hostapd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    tiwlan.ini \
    TQS_D_1.7.ini \
    TQS_D_1.7_127x.ini \
    calibrator

# Misc
PRODUCT_PACKAGES += \
    Torch \
    libnetcmdiface \
    libsurfaceflinger_client \
    com.android.future.usb.accessory

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:/system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:/system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:/system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:/system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:/system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:/system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:/system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml

# Binary
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/bin/akmd:/system/bin/akmd \
    device/htc/ruby/prebuilt/bin/awb_camera:/system/bin/awb_camera \
    device/htc/ruby/prebuilt/bin/calibrator:/system/bin/calibrator \
    device/htc/ruby/prebuilt/bin/charging:/system/bin/charging \
    device/htc/ruby/prebuilt/bin/ewtzmud:/system/bin/ewtzmud \
    device/htc/ruby/prebuilt/bin/htcbatt:/system/bin/htcbatt \
    device/htc/ruby/prebuilt/bin/ipd:/system/bin/ipd \
    device/htc/ruby/prebuilt/bin/ks:/system/bin/ks \
    device/htc/ruby/prebuilt/bin/lsc_camera:/system/bin/lsc_camera \
    device/htc/ruby/prebuilt/bin/mpdecision:/system/bin/mpdecision \
    device/htc/ruby/prebuilt/bin/netmgrd:/system/bin/netmgrd \
    device/htc/ruby/prebuilt/bin/netsharing:/system/bin/netsharing \
    device/htc/ruby/prebuilt/bin/port-bridge:/system/bin/port-bridge \
    device/htc/ruby/prebuilt/bin/qcks:/system/bin/qcks \
    device/htc/ruby/prebuilt/bin/qmiproxy:/system/bin/qmiproxy \
    device/htc/ruby/prebuilt/bin/qmuxd:/system/bin/qmuxd \
    device/htc/ruby/prebuilt/bin/rmt_storage:/system/bin/rmt_storage \
    device/htc/ruby/prebuilt/bin/thermald:/system/bin/thermald \
    device/htc/ruby/prebuilt/bin/uimqc:/system/bin/uimqc \
    device/htc/ruby/prebuilt/bin/zchgd:/system/bin/zchgd \
    device/htc/ruby/prebuilt/xbin/wireless_modem:/system/xbin/wireless_modem

# GPS and Host Config
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/etc/agps_rm:/system/etc/agps_rm \
    device/htc/ruby/prebuilt/etc/gps.conf:/system/etc/gps.conf \
    device/htc/ruby/prebuilt/etc/host:/system/etc/host \
    device/htc/ruby/prebuilt/etc/vpimg:/system/etc/vpimg \
    device/htc/ruby/prebuilt/etc/init.d/04host:/system/etc/init.d/04host

# Media
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/etc/media_codecs.xml:/system/etc/media_codecs.xml \
    device/htc/ruby/prebuilt/etc/media_profiles.xml:/system/etc/media_profiles.xml

# WiFi
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:/system/etc/wifi/wpa_supplicant_overlay.conf \
    device/htc/ruby/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:/system/etc/wifi/p2p_supplicant_overlay.conf

# Sound Configs
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/etc/AIC3254_REG_DualMic.csv:/system/etc/AIC3254_REG_DualMic.csv \
    device/htc/ruby/prebuilt/etc/AIC3254_REG_DualMic_XD.csv:/system/etc/AIC3254_REG_DualMic_XD.csv \
    device/htc/ruby/prebuilt/etc/AdieHWCodec.csv:/system/etc/AdieHWCodec.csv \
    device/htc/ruby/prebuilt/etc/AudioBTID.csv:/system/etc/AudioBTID.csv \
    device/htc/ruby/prebuilt/etc/CodecDSPID.txt:/system/etc/CodecDSPID.txt \
    device/htc/ruby/prebuilt/etc/TPA2051_CFG.csv:/system/etc/TPA2051_CFG.csv \
    device/htc/ruby/prebuilt/etc/TPA2051_CFG_XB.csv:/system/etc/TPA2051_CFG_XB.csv \
    device/htc/ruby/prebuilt/etc/TPA2051_CFG_XC.csv:/system/etc/TPA2051_CFG_XC.csv \
    device/htc/ruby/prebuilt/etc/soundimage/Sound_MFG.txt:/system/etc/soundimage/Sound_MFG.txt \
    device/htc/ruby/prebuilt/etc/soundimage/Sound_Original.txt:/system/etc/soundimage/Sound_Original.txt \
    device/htc/ruby/prebuilt/etc/soundimage/Sound_Original_Recording.txt:/system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/ruby/prebuilt/etc/soundimage/Sound_Original_SPK.txt:/system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/ruby/prebuilt/etc/soundimage/Sound_Phone_Original_HP.txt:/system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/ruby/prebuilt/etc/soundimage/Sound_Phone_Original_REC.txt:/system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/ruby/prebuilt/etc/soundimage/Sound_Phone_Original_SPK.txt:/system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/ruby/prebuilt/etc/soundimage/Sound_Rec_Landscape.txt:/system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/ruby/prebuilt/etc/soundimage/Sound_Rec_Portrait.txt:/system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/ruby/prebuilt/etc/soundimage/Sound_Recording.txt:/system/etc/soundimage/Sound_Recording.txt \
    device/htc/ruby/prebuilt/etc/soundimage/srs_geq10.cfg:/system/etc/soundimage/srs_geq10.cfg \
    device/htc/ruby/prebuilt/etc/soundimage/srsfx_trumedia_51.cfg:/system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/ruby/prebuilt/etc/soundimage/srsfx_trumedia_movie.cfg:/system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/ruby/prebuilt/etc/soundimage/srsfx_trumedia_music.cfg:/system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/ruby/prebuilt/etc/soundimage/srsfx_trumedia_voice.cfg:/system/etc/soundimage/srsfx_trumedia_voice.cfg

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/etc/firmware/TIInit_7.6.15.bts:/system/etc/firmware/TIInit_7.6.15.bts \
    device/htc/ruby/prebuilt/etc/firmware/WL127x_2.0_2.25.bts:/system/etc/firmware/WL127x_2.0_2.25.bts \
    device/htc/ruby/prebuilt/etc/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/htc/ruby/prebuilt/etc/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/htc/ruby/prebuilt/etc/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    device/htc/ruby/prebuilt/etc/firmware/firmware.bin:/system/etc/wifi/firmware.bin \
    device/htc/ruby/prebuilt/etc/firmware/firmware_ap.bin:/system/etc/wifi/firmware_ap.bin \
    device/htc/ruby/prebuilt/etc/firmware/fm_rx_init_1273.2.bts:/system/etc/firmware/fm_rx_init_1273.2.bts \
    device/htc/ruby/prebuilt/etc/firmware/fmc_init_1273.2.bts:/system/etc/firmware/fmc_init_1273.2.bts \
    device/htc/ruby/prebuilt/etc/firmware/htc_1271fw.bin:/system/etc/firmware/htc_1271fw.bin \
    device/htc/ruby/prebuilt/etc/firmware/htc_1271fw_196_header.bin:/system/etc/firmware/htc_1271fw_196_header.bin \
    device/htc/ruby/prebuilt/etc/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/htc/ruby/prebuilt/etc/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/htc/ruby/prebuilt/etc/firmware/libpn544_fw.so:/system/vendor/firmware/libpn544_fw.so \
    device/htc/ruby/prebuilt/etc/firmware/ti-connectivity/wl1271-nvs.bin:/system/etc/firmware/ti-connectivity/wl1271-nvs.bin \
    device/htc/ruby/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin \
    device/htc/ruby/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
    device/htc/ruby/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
    device/htc/ruby/prebuilt/etc/firmware/vac_config.ini:/system/etc/firmware/vac_config.ini \
    device/htc/ruby/prebuilt/etc/firmware/version:/system/etc/firmware/version \
    device/htc/ruby/prebuilt/etc/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw \
    device/htc/ruby/prebuilt/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/htc/ruby/prebuilt/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw

# Hardware
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/lib/hw/camera.vendor.msm8660.so:/system/lib/hw/camera.vendor.msm8660.so \
    device/htc/ruby/prebuilt/lib/hw/nfc.ruby.so:/system/lib/hw/nfc.ruby.so \
    device/htc/ruby/prebuilt/lib/hw/sensors.ruby.so:/system/lib/hw/sensors.ruby.so

# Adreno
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/lib/egl/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so \
    device/htc/ruby/prebuilt/lib/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    device/htc/ruby/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    device/htc/ruby/prebuilt/lib/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    device/htc/ruby/prebuilt/lib/egl/libplayback_adreno200.so:/system/lib/egl/libplayback_adreno200.so \
    device/htc/ruby/prebuilt/lib/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \
    device/htc/ruby/prebuilt/lib/libC2D2.so:/system/lib/libC2D2.so \
    device/htc/ruby/prebuilt/lib/libOpenCL.so:/system/lib/libOpenCL.so \
    device/htc/ruby/prebuilt/lib/libOpenVG.so:/system/lib/libOpenVG.so \
    device/htc/ruby/prebuilt/lib/libc2d2_z180.so:/system/lib/libc2d2_z180.so \
    device/htc/ruby/prebuilt/lib/libgsl.so:/system/lib/libgsl.so \
    device/htc/ruby/prebuilt/lib/libsc-a2xx.so:/system/lib/libsc-a2xx.so

# Audio
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/lib/libacdbloader.so:/system/lib/libacdbloader.so \
    device/htc/ruby/prebuilt/lib/libacdbmapper.so:/system/lib/libacdbmapper.so \
    device/htc/ruby/prebuilt/lib/libaudcal.so:/system/lib/libaudcal.so \
    device/htc/ruby/prebuilt/lib/libaudioalsa.so:/system/lib/libaudioalsa.so \
    device/htc/ruby/prebuilt/lib/libhtc_acoustic.so:/system/lib/libhtc_acoustic.so

# Camera
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/lib/libcameraface.so:/system/lib/libcameraface.so \
    device/htc/ruby/prebuilt/lib/libcamerapp.so:/system/lib/libcamerapp.so \
    device/htc/ruby/prebuilt/lib/libgemini.so:/system/lib/libgemini.so \
    device/htc/ruby/prebuilt/lib/libidl.so:/system/lib/libidl.so \
    device/htc/ruby/prebuilt/lib/libmmipl.so:/system/lib/libmmipl.so \
    device/htc/ruby/prebuilt/lib/libmmjpeg.so:/system/lib/libmmjpeg.so \
    device/htc/ruby/prebuilt/lib/liboemcamera.so:/system/lib/liboemcamera.so \
    device/htc/ruby/prebuilt/lib/libOlaEngine.so:/system/lib/libOlaEngine.so \
    device/htc/ruby/prebuilt/lib/libposteffect.so:/system/lib/libposteffect.so

# CamTmpFix
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/app/Camera2.apk:/system/app/Camera2.apk \
    device/htc/ruby/prebuilt/lib/libcamera_client.so:/system/lib/libcamera_client.so \
    device/htc/ruby/prebuilt/lib/libcamera_metadata.so:/system/lib/libcamera_metadata.so \
    device/htc/ruby/prebuilt/lib/libcameraservice.so:/system/lib/libcameraservice.so

# Sensors
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/lib/libmllite.so:/system/lib/libmllite.so \
    device/htc/ruby/prebuilt/lib/libmlplatform.so:/system/lib/libmlplatform.so \
    device/htc/ruby/prebuilt/lib/libmpl.so:/system/lib/libmpl.so \
    device/htc/ruby/prebuilt/lib/libmpl_jni.so:/system/lib/libmpl_jni.so

# Chromatix
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/lib/libchromatix_mt9d015_default_video.so:/system/lib/libchromatix_mt9d015_default_video.so \
    device/htc/ruby/prebuilt/lib/libchromatix_mt9d015_default_zsl.so:/system/lib/libchromatix_mt9d015_default_zsl.so \
    device/htc/ruby/prebuilt/lib/libchromatix_mt9d015_preview.so:/system/lib/libchromatix_mt9d015_preview.so \
    device/htc/ruby/prebuilt/lib/libchromatix_s5k3h2yx_default_video.so:/system/lib/libchromatix_s5k3h2yx_default_video.so \
    device/htc/ruby/prebuilt/lib/libchromatix_s5k3h2yx_hfr.so:/system/lib/libchromatix_s5k3h2yx_hfr.so \
    device/htc/ruby/prebuilt/lib/libchromatix_s5k3h2yx_preview.so:/system/lib/libchromatix_s5k3h2yx_preview.so \
    device/htc/ruby/prebuilt/lib/libchromatix_s5k3h2yx_zsl.so:/system/lib/libchromatix_s5k3h2yx_zsl.so

# Radio
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/lib/libdiag.so:/system/lib/libdiag.so \
    device/htc/ruby/prebuilt/lib/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \
    device/htc/ruby/prebuilt/lib/libdsutils.so:/system/lib/libdsutils.so \
    device/htc/ruby/prebuilt/lib/libnetmgr.so:/system/lib/libnetmgr.so \
    device/htc/ruby/prebuilt/lib/libnv.so:/system/lib/libnv.so \
    device/htc/ruby/prebuilt/lib/liboncrpc.so:/system/lib/liboncrpc.so \
    device/htc/ruby/prebuilt/lib/libpbmlib.so:/system/lib/libpbmlib.so \
    device/htc/ruby/prebuilt/lib/libqc-opt.so:/system/lib/libqc-opt.so \
    device/htc/ruby/prebuilt/lib/libqdp.so:/system/lib/libqdp.so \
    device/htc/ruby/prebuilt/lib/libqmi.so:/system/lib/libqmi.so \
    device/htc/ruby/prebuilt/lib/libqmiservices.so:/system/lib/libqmiservices.so \
    device/htc/ruby/prebuilt/lib/libqueue.so:/system/lib/libqueue.so \
    device/htc/ruby/prebuilt/lib/libril-qc-qmi-1.so:/system/lib/libril-qc-qmi-1.so \
    device/htc/ruby/prebuilt/lib/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so

# Misc
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/lib/libmm-color-convertor.so:/system/lib/libmm-color-convertor.so \
    device/htc/ruby/prebuilt/lib/libdsm.so:/system/lib/libdsm.so

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/usr/keychars/ruby-keypad.kcm:/system/usr/keychars/ruby-keypad.kcm \
    device/htc/ruby/prebuilt/usr/keylayout/atmel-touchscreen.kl:/system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/ruby/prebuilt/usr/keylayout/h2w_headset.kl:/system/usr/keylayout/h2w_headset.kl \
    device/htc/ruby/prebuilt/usr/keylayout/ruby-keypad.kl:/system/usr/keylayout/ruby-keypad.kl

# Input Device Config
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/usr/idc/atmel-touchscreen.idc:/system/usr/idc/atmel-touchscreen.idc \
    device/htc/ruby/prebuilt/usr/idc/ruby-keypad.idc:/system/usr/idc/ruby-keypad.idc

# Device Default Properties
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.root_access=3 \
    ro.adb.secure=3 \
    ro.secure=0

# Device Properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    dalvik.vm.dexopt-flags=m=v,o=y \
    dalvik.vm.jit.codecachesize=0 \
    dalvik.vm.lockprof.threshold=500 \
    debug.egl.hw=1 \
    debug.egl.recordable.rgba8888=1 \
    debug.enabletr=true \
    debug.mdpcomp.logs=0 \
    debug.mdpcomp.maxlayer=0 \
    debug.sf.hw=1 \
    htc.audio.alt.enable=0 \
    htc.audio.hac.enable=0 \
    media.a1026.enableA1026=0 \
    media.a1026.nsForVoiceRec=0 \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.purgeable_assets=1 \
    persist.sys.usb.config=mtp,adb \
    persist.sys.use_16bpp_alpha=1 \
    ro.bq.gpu_to_cpu_unsupported=1 \
    ro.com.google.locationfeatures=1 \
    ro.config.low_ram=true \
    ro.debuggable=1 \
    ro.ksm.default=1 \
    ro.opengles.version=131072 \
    ro.setupwizard.enable_bypass=1 \
    ro.sf.lcd_density=240 \
    ro.vold.umsdirtyratio=40 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=255

# Device Tags
PRODUCT_TAGS += dalvik.gc.type-precise

# Device Density
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
