# Generic product
PRODUCT_NAME := Boostpop
PRODUCT_BRAND := Boostpop
PRODUCT_DEVICE := generic

# Version info
ROM_VERSION_MAJOR := 3
ROM_VERSION_MINOR := 0
ROM_VERSION_BETA := true

# Block based ota flag default to off to get old style ota zip back (To get back block based zip, just enable to true.)
TARGET_USES_BLOCK_BASED_OTA := false

VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR)

# Boostpop release are no block base. We use block for beta testing.
ifeq ($(ROM_VERSION_BETA),true)
    TARGET_USES_BLOCK_BASED_OTA := true
    VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR)-beta
endif

export ROM_VERSION := $(VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(ROM_VERSION) \
    ro.boost.version=$(ROM_VERSION)

# Common build prop overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    net.tethering.noprovisioning=true \
    keyguard.no_require_sim=true

# Proprietary latinime lib needed for swyping
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/boostpop/overlays/common

# Inherit sabermod configs.  Default to arm if TARGET_ARCH is not defined.
#ifndef TARGET_ARCH
#  $(warning ********************************************************************************)
#  $(warning *  TARGET_ARCH not defined, defaulting to arm.)
#  $(warning *  To use arm64 set TARGET_ARCH := arm64)
#  $(warning *  in device tree before common.mk is called.)
#  $(warning ********************************************************************************)
#TARGET_ARCH := arm
#endif
#include vendor/boostpop/config/sm.mk

# Bring in camera effects
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/system/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/boostpop/prebuilt/system/media/PFFprec_600.emd:system/media/PFFprec_600.emd \

# CDMA APN list
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Bootanimation support
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/system/media/bootanimation.zip:system/media/bootanimation.zip

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/boostpop/prebuilt/bin/sysinit:system/bin/sysinit

# Init script file with custom extras
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/etc/init.local.rc:root/init.boost.rc

# SU Support
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/misc/UPDATE-SuperSU.zip:system/addon.d/supersu/supersu.zip \
    vendor/boostpop/prebuilt/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Gapps backup script
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/boostpop/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/boostpop/prebuilt/bin/50-backupScript.sh:system/addon.d/50-backupScript.sh 

# Stock ui sounds
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/system/media/audio/ui/audio_end.ogg:system/media/audio/ui/audio_end.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/audio_initiate.ogg:system/media/audio/ui/audio_initiate.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/Dock.ogg:system/media/audio/ui/Dock.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/KeypressInvalid.ogg:system/media/audio/ui/KeypressInvalid.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/Lock.ogg:system/media/audio/ui/Lock.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/NFCFailure.ogg:system/media/audio/ui/NFCFailure.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/NFCInitiated.ogg:system/media/audio/ui/NFCInitiated.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/NFCSuccess.ogg:system/media/audio/ui/NFCSuccess.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/NFCTransferComplete.ogg:system/media/audio/ui/NFCTransferComplete.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/NFCTransferInitiated.ogg:system/media/audio/ui/NFCTransferInitiated.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/Trusted.ogg:system/media/audio/ui/Trusted.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/Undock.ogg:system/media/audio/ui/Undock.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/VideoStop.ogg:system/media/audio/ui/VideoStop.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/WirelessChargingStarted.ogg:system/media/audio/ui/WirelessChargingStarted.ogg
