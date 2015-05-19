# Copyright (C) 2015 Boost Project
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
