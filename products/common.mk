# Generic product
PRODUCT_NAME := Boostpop
PRODUCT_BRAND := Boostpop
PRODUCT_DEVICE := generic

# Version info
ROM_VERSION_MAJOR := 2
ROM_VERSION_MINOR := 3

VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR)

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
    keyguard.no_require_sim=true

# Boost build prop
PRODUCT_PROPERTY_OVERRIDES += \
    pm.sleep.mode=1 \
    wifi.supplicant_scan_interval=300 

# Proprietary latinime lib needed for swyping
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/boostpop/overlays/common

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
    vendor/boostpop/prebuilt/bin/sysinit:system/bin/sysinit

# SU Support
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/misc/UPDATE-SuperSU.zip:system/addon.d/supersu/supersu.zip \
    vendor/boostpop/prebuilt/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Gapps backup script
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/boostpop/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/boostpop/prebuilt/bin/50-backupScript.sh:system/addon.d/50-backupScript.sh 
