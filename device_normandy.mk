#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/nokia/normandy

DEVICE_PACKAGE_OVERLAYS := device/nokia/normandy/overlay

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    device/nokia/normandy/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/nokia/normandy/idc/qwerty2.idc:system/usr/idc/qwerty2.idc

# Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/media_codecs_7627a.xml:system/etc/media_codecs.xml

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/wlan.ko:/system/lib/modules/wlan.ko

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27a \
    audio_policy.conf \
    audio_policy.msm7x27a \
    audio.r_submix.default \
    audio.usb.default \
    libaudioparameter \
    libaudio-resampler \
    libtinyalsa \
    tinycap \
    tinymix \
    tinyplay

PRODUCT_PROPERTY_OVERRIDES += \
    audio.gapless.playback.disable=true

# Display
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libc2dcolorconvert \
    liboverlay \
    libmemalloc \
    libtilerenderer \
    libgenlock \
    libqdutils \
    libqdMetaData

# Keys
PRODUCT_PACKAGES += \
    7x27a_kp.kcm \
    atmel_mxt_ts.kl \
    synaptics_rmi4_i2c.kl \
    ft5x06_ts.kl \
    surf_keypad.kl \
    7k_handset.kl \
    7x27a_kp.kl \
    ft6306.kl

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    resize2fs \
    setup_fs

# FM Radio
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.analogpath.supported=false \
    ro.fm.transmitter=false \
    ro.fm.mulinst.recording.support=false

# GPS
PRODUCT_PACKAGES += \
    gps.default \
    libgps.utils \
    libloc_adapter \
    libloc_eng \
    libloc_api-rpc-qc

# Misc
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    libcnefeatureconfig \
    libnl_2 \
    lights.msm7x27a

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libOmxVdec \
    libOmxVenc \
    libOmxVidEnc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc
    
# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.block_tuning.sh \
    init.qcom.unicorn-dpi.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.class_core.sh \
    init.qcom.class_main.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    ueventd.qcom.rc \
    init.target.rc \
    init.qcom.ril.path.sh \
    rmt_storage_recovery \
    init.recovery.qcom.rc

# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.post_boot.sh \
    init.qcom.bt.sh \
    init.ath3k.bt.sh \
    init.qcom.efs.sync.sh \
    init.qcom.coex.sh \
    init.qcom.fm.sh \
    init.qcom.sdio.sh \
    init.qcom.post_fs.sh \
    init.qcom.composition_type.sh \
    init.target.8x25.sh \
    init.qcom.thermald_conf.sh \
    init.ft.fwupdate.sh \
    init.qcom.sd_hot_plug.sh \
    thermald-8x25-msm1-pmic_therm.conf \
    thermald-8x25-msm2-msm_therm.conf \
    thermald-8x25-msm2-pmic_therm.conf

# Wifi
PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf

# Common properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    telephony.lteOnGsmDevice=0 \
    persist.radio.multisim.config=dsds \
    persist.multisim.config=dsds \
    persist.sys.usb.config=mtp,adb \
    wlan.driver.ath=1 \
    ro.config.low_ram=true

# Newer camera API isn't supported.
PRODUCT_PROPERTY_OVERRIDES += \
   camera2.portability.force_api=1

# Disable atlas services on low-ram targets
PRODUCT_PROPERTY_OVERRIDES += \
   config.disable_atlas=true

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so


# Properties

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path=/data/misc/bluedroid/bdaddr \
    ro.qualcomm.bluetooth.dun=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true

PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=dyn \
    debug.hwc.dynThreshold=1.9 \
    persist.hwc.mdpcomp.enable=false \
    debug.mdpcomp.logs=0 \
    debug.gralloc.map_fb_memory=1 \
    debug.hwc.fakevsync=1 \
    ro.sf.lcd_density=240

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=52m \
    dalvik.vm.heapsize=128m

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d/dev/smd0 \
    ro.telephony.call_ring.delay=100 \
    ro.telephony.call_ring.multiple=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vold.umsdirtyratio=50

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=60

# Low RAM
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.jit.codecachesize=0 \
    persist.sys.force_highendgfx=true \
    ro.config.max_starting_bg=8 \
    ro.sys.fw.bg_apps_limit=16
    
# Use ART small mode
PRODUCT_PROPERTY_OVERRIDES += \
   dalvik.vm.dex2oat-filter=interpret-only \
   dalvik.vm.image-dex2oat-filter=speed

# ART properties
ADDITIONAL_DEFAULT_PROPERTIES += \
   dalvik.vm.dex2oat-Xms=8m \
   dalvik.vm.dex2oat-Xmx=96m \
   dalvik.vm.image-dex2oat-Xms=48m \
   dalvik.vm.image-dex2oat-Xmx=48m

# Music
PRODUCT_PACKAGES += \
   Eleven

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/twrp.fstab:recovery/root/etc/twrp.fstab

$(call inherit-product, vendor/nokia/normandy/normandy-vendor.mk)
