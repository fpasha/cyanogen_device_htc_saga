#
# Copyright (C) 2011 The CyanogenMod Project
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

TARGET_SPECIFIC_HEADER_PATH := device/htc/saga/include
DEVICE_PACKAGE_OVERLAYS += device/htc/saga/overlay
$(call inherit-product, device/htc/saga/BoardConfig.mk)

##########################################################################################################
# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
	device/htc/saga/gps.conf:system/etc/gps.conf

# First, the most specific values, i.e. the aspects that are specific to GSM
PRODUCT_COPY_FILES += \
	device/htc/saga/init.saga.rc:root/init.saga.rc \
	device/htc/saga/ueventd.saga.rc:root/ueventd.saga.rc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# gsm config xml file
PRODUCT_COPY_FILES += \
	device/htc/saga/voicemail-conf.xml:system/etc/voicemail-conf.xml

# Keychars
PRODUCT_COPY_FILES += \
	device/htc/saga/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
	device/htc/saga/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
	device/htc/saga/keychars/saga-keypad.kcm.bin:system/usr/keychars/saga-keypad.kcm.bin \
	device/htc/saga/keychars/saga-keypad-wwe.kcm.bin:system/usr/keychars/saga-keypad-wwe.kcm.bin 

# Input device calibration files
PRODUCT_COPY_FILES += \
	device/htc/saga/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
	device/htc/saga/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Keylayouts
PRODUCT_COPY_FILES += \
	device/htc/saga/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	device/htc/saga/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	device/htc/saga/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/htc/saga/keylayout/saga-keypad.kl:system/usr/keylayout/saga-keypad.kl \
	device/htc/saga/keylayout/saga-keypad-wwe.kl:system/usr/keylayout/saga-keypad-wwe.kl

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
	device/htc/saga/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
	device/htc/saga/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
	device/htc/saga/dsp/AIC3254_REG_DualMic.txt:system/etc/AIC3254_REG_DualMic.txt \
	device/htc/saga/dsp/AIC3254_REG_DualMic_XB.csv:system/etc/AIC3254_REG_DualMic_XB.csv \
	device/htc/saga/dsp/AIC3254_REG_DualMic_XC.csv:system/etc/AIC3254_REG_DualMic_XC.csv \
	device/htc/saga/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
	device/htc/saga/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
	device/htc/saga/dsp/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
	device/htc/saga/dsp/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
	device/htc/saga/dsp/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
	device/htc/saga/dsp/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
	device/htc/saga/dsp/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
	device/htc/saga/dsp/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
	device/htc/saga/dsp/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
	device/htc/saga/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
	device/htc/saga/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
	device/htc/saga/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
	device/htc/saga/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
	device/htc/saga/dsp/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
	device/htc/saga/dsp/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
	device/htc/saga/dsp/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
	device/htc/saga/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
	device/htc/saga/dsp/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
	device/htc/saga/dsp/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
	device/htc/saga/dsp/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
	device/htc/saga/dsp/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
	device/htc/saga/dsp/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
	device/htc/saga/dsp/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
	device/htc/saga/dsp/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt

PRODUCT_COPY_FILES += \
	device/htc/saga/vold.fstab:system/etc/vold.fstab

# media config xml file
PRODUCT_COPY_FILES += \
	device/htc/saga/media_profiles.xml:system/etc/media_profiles.xml

# Sets copy files for all HTC-specific device
PRODUCT_COPY_FILES += \
	device/htc/saga/ecclist_for_mcc.conf:system/etc/ecclist_for_mcc.conf

# media config xml file
PRODUCT_COPY_FILES += \
	device/htc/saga/media_profiles.xml:system/etc/media_profiles.xml

# Kernel modules
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/saga/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
	device/htc/saga/prebuilt/bcm4329.ko:system/lib/modules/bcm4329.ko

##########################################################################################################

$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)

# Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-htc \
	ro.com.google.locationfeatures=1 \
	ro.com.google.networklocation=1 \
	ro.com.google.gmsversion=2.3_r3 \
	ro.setupwizard.enable_bypass=1 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y

# Override /proc/sys/vm/dirty_ratio on UMS
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vold.umsdirtyratio=20

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=240

# htc audio settings
PRODUCT_PROPERTY_OVERRIDES += \
	htc.audio.alt.enable=0 \
	htc.audio.hac.enable=1

# media profiles and capabilities spec
PRODUCT_PROPERTY_OVERRIDES += \
	media.a1026.nsForVoiceRec=0 \
	media.a1026.enableA1026=0

##########################################################################################################

PRODUCT_PACKAGES += \
	librpc \
	camera \
	lights.saga \
	sensors.saga \
	audio_policy.saga \
	audio.primary.saga \
	audio.a2dp.default \
	libaudioutils \
	gps.saga \
	gralloc.msm7x30 \
	camera.saga \
	com.android.future.usb.accessory \
	libinvensense_mpl \
	libOmxCore \
	libOmxVenc \
	libOmxVdec 

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

#PRODUCT_PACKAGES += \
#	audio.a2dp.default \
#	libaudioutils \
#    audio.primary.msm7x30 \
#    audio_policy.msm7x30 \
#    audio.primary.saga \
#    audio_policy.saga \


#PRODUCT_PACKAGES += \
#	hwcomposer.msm7x30 \
#	overlay.default \
#	overlay.msm7x30 \
#	copybit.msm7x30 \
#	lights.msm7x30 \
#	sensors.msm7x30 \
#	gps.msm7x30 \
#	camera.msm7x30 \

##########################################################################################################
# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# use high-density artwork where available
PRODUCT_LOCALES += hdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

##########################################################################################################

$(call inherit-product, device/htc/saga/saga-vendor-blobs.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, build/target/product/full_base.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := htc_saga
PRODUCT_DEVICE := saga
PRODUCT_MODEL := HTC Desire S
PRODUCT_MANUFACTURER := HTC
