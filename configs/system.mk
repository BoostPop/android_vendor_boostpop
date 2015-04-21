# Include overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/boostpop/overlays/common

# CDMA APN list
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

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
