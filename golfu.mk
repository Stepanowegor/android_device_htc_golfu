#
# Copyright (C) 2012 The Android Open Source Project
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


DEVICE_PACKAGE_OVERLAYS := device/htc/golfu/overlay

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/usr/keylayout/golfu-keypad.kl:system/usr/keylayout/golfu-keypad.kl \
    device/htc/golfu/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/golfu/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/golfu/prebuilt/usr/keylayout/himax-touchscreen.kl:system/usr/keylayout/himax-touchscreen.kl

# Input device calibration files
PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/golfu/prebuilt/usr/idc/himax-touchscreen.idc:system/usr/idc/himax-touchscreen.idc

# gps with agps
PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/etc/gps.conf:system/etc/gps.conf

PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/root/init:root/init \
    device/htc/golfu/prebuilt/root/init.rc:root/init.rc \
    device/htc/golfu/prebuilt/root/init.golfu.rc:root/init.golfu.rc \
    device/htc/golfu/prebuilt/root/init.usb.rc:root/init.usb.rc \
    device/htc/golfu/prebuilt/root/ueventd.golfu.rc:root/ueventd.golfu.rc \
    device/htc/golfu/prebuilt/root/ueventd.rc:root/ueventd.rc \
    device/htc/golfu/prebuilt/root/logo.rle:root/logo.rle

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.ecc.VODA-Africa-South=112,911,999 \
    ro.ril.ecc.HTC-GCC=999,112,997 \
    ro.ril.ecc.HTC-WWE=999 \
    ro.ril.ecc.HTC-Dutch=112 \
    ro.ril.ecc.HTC-SPA=112, 911,112, 911 \
    ro.ril.ecc.HTC-FRA=112,911 \
    ro.ril.ecc.HTC-ITA=112,911 \
    ro.ril.ecc.HTC-EastEurope=112 \
    ro.ril.enable.a52.HTC-ITA=1 \
    ro.ril.enable.a53.HTC-ITA=1 \
    ro.ril.enable.a52=0 \
    ro.ril.enable.a53=1 \
    ro.ril.hsdpa.category=8 \
    ro.ril.hsxpa=1 \
    ro.ril.fast.dormancy.rule=1 \
    ro.ril.disable.fd.plmn.prefix=23402,23410,23411,23420,27202 \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.enable.sdr=1 \
    ro.ril.enable.amr.wideband=1 \
    ro.ril.enable.r8fd=0 \
    ro.com.google.clientidbase=android-htc-rev \
    ro.ril.vmail.23415=1571,BT,121,VDF UK \
    ro.ril.vmail.27203=171 \
    ro.ril.vmail.65502=181 \
    ro.ril.vmail.27211=171 \
    ro.ril.vmail.65510=100 \
    ro.ril.vmail.22299=4133,3ITA \
    ro.ril.vmail.23410=901,O2 UK,905,TESCO,443,giffgaff \
    ro.ril.vmail.22201=41901,I TIM \
    ro.ril.vmail.22210=42020,Vodafone IT \
    ro.ril.vmail.22288=4200,I WIND \
    ro.config.htc.enableCOTA=1 \
    ro.ril.enable.pre_r8fd=1 \
    ro.ril.fd.pre_r8_tout.scr_off=2 \
    ro.ril.fd.pre_r8_tout.scr_on=3 \
    ro.ril.fd.r8_tout.scr_off=0 \
    ro.ril.fd.r8_tout.scr_on=0 \
    rild.libpath=/system/lib/libhtc_ril.so \
    rild.libargs=-d /dev/smd0 \
    persist.radio.adb_log_on=1 \
    ro.baseband.arch=msm \
    rild.libpath.ganlite=/system/lib/librilswitch.so \
    rilswitch.vendorlibpath=/system/lib/libhtc_ril.so \
    rilswitch.ganlibpath=/system/lib/libganril.so \
    ro.ril.hep=1 \
    ro.ril.enable.dtm=0 \
    ro.ril.hsdpa.category=8 \
    ro.ril.htcmaskw1.bitmask=4294967295 \
    ro.ril.htcmaskw1=14449 \
    mobiledata.interfaces=rmnet0,rmnet1,rmnet2,gprs,ppp0 \
    wifi.interface=wlan0 \
    wifi.softap.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.sf.lcd_density=160 \
    ro.opengles.version=131072 \
    ro.telephony.ril.v3=signalstrength \
    ro.htc.camerahack=msm7k \
    ro.product.processor=600MHz \
    ro.product.ram=512MB \
    ro.product.display_resolution=3.5 inch HVGA resolution \
    ro.product.main_camera=5M \
    ro.product.front_camera=NA \
    ro.product.bluetooth= 4.0 \
    ro.product.wifi=802.11 b/g/n \
    ro.product.nled_off=1 \
    ro.ril.update.acoustic.table=1

# Default network type.
# 0 => WCDMA preferred.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=0

# For emmc phone storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.phone_storage=1


# This is a 512MB device, so 32mb heapsize
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=64m \
    dalvik.vm.heapgrowthlimit=32m

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/golfu/golfu-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
    settings.display.autobacklight=1 \
    settings.display.brightness=143 \
    persist.service.mount.playsnd=0 \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enable_bypass=1 \
    ro.media.dec.aud.wma.enabled=1 \
    ro.media.dec.vid.wmv.enabled=1 \
    dalvik.vm.dexopt-flags=m=y \
    ro.config.sync=yes \
    persist.sys.usb.config=mass_storage,adb \
    dalvik.vm.dexopt-data-only=1 \
    debug.sf.hw=1 \
    debug.qctwa.preservebuf=1 \
    com.qc.hardware=true \
    com.qc.hdmi_out=false \
    debug.camcorder.disablemeta=1 \
    ro.media.enc.jpeg.quality=100 \
    ro.media.dec.jpeg.memcap=20000000 \
    debug.composition.type=mdp \
    ro.framework.gestureservice=0 \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    ro.ext4fs=1 \
    htc.audio.alc.enable=1 \
    htc.audio.swalt.enable=1 \
    lpa.decode=false \
    lpa.use-stagefright=false \
    htc.audio.global.state=0 \
    htc.audio.global.profile=0 \
    htc.audio.beats.state=1 \
    htc.audio.beats.config=1 \
    persist.htc.audio.pcm.samplerate=44100 \
    persist.htc.audio.pcm.channels=2
#    debug.egl.swapinterval=-1 \
#    debug.performance.tuning=1 \
#    video.accelerate.hw=1 \
#    linuxmgr.max_events_per_sec=150 \
#    persist.sys.use_dithering=1 \
#    persist.sys.purgeable_assets=1 \
#    ro.config.nocheckin=1 \
#    dalvik.vm.checkjni=false \
#    ro.media.enc.hprof.vid.bps=8000000
#    debug.qctwa.statusbar=1 \
#    debug.composition.type=dyn \
#    dev.pm.dyn_samplingrate=1
#    debug.composition.type=mdp \
#    debug.gr.calcfps=1 \
#    ro.sf.compbypass.enable=1

# Override /proc/sys/vm/dirty_ratio on UMS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vold.umsdirtyratio=20

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# media config xml file
PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES += \
    librs_jni \
    libOmxCore \
    libmm-omxcore \
    libOmxH264Dec \
    libOmxMpeg4Dec \
    libOmxVidEnc \
    libstagefrighthw \
    dexpreopt \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    camera.golfu \
    lights.golfu \
    sensors.golfu \
    audio.a2dp.default \
    libaudioutils \
    com.android.future.usb.accessory \
    librpc \
    e2fsck \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    libtilerenderer \
    libQcomUI

PRODUCT_LOCALES := en_GB
PRODUCT_LOCALES += mdpi

PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/htc/golfu/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/common/gps/gps.conf_US:system/etc/gps.conf \
    vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/golfu/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Prebuilt Modules
PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/lib/libqc-opt.so:system/lib/libqc-opt.so \
    device/htc/golfu/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    device/htc/golfu/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/htc/golfu/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/htc/golfu/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/htc/golfu/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/htc/golfu/prebuilt/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    device/htc/golfu/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/htc/golfu/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/htc/golfu/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/htc/golfu/prebuilt/etc/firmware/ath6k:system/etc/firmware/ath6k \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003:system/etc/firmware/ath6k/AR6003 \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1:system/etc/firmware/ath6k/AR6003/hw2.1.1 \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin1:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin1 \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin2:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin2 \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin3:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin3 \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/fw-3.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/fw-3.bin \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/nullTestFlow.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/nullTestFlow.bin \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/utf.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/utf.bin \
    device/htc/golfu/prebuilt/etc/firmware/bahama.txt:system/etc/firmware/bahama.txt \
    device/htc/golfu/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/golfu/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    vendor/cm/prebuilt/common/bootanimation/vertical-320x480.zip:system/media/bootanimation.zip

$(call inherit-product, build/target/product/full_base_telephony.mk)

$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/htc/golfu/golfu-vendor.mk)


PRODUCT_NAME := generic_golfu
PRODUCT_MANUFACTURER := HTC
PRODUCT_DEVICE := HTC Desire C

PRODUCT_AAPT_CONFIG := normal mdpi mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

