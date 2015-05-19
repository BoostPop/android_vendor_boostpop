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

# Common build prop overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    keyguard.no_require_sim=true \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \

# Proprietary latinime lib needed for swyping
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Add few DRM lib
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    vendor/boostpop/prebuilt/lib/mediadrm/libdrmclearkeyplugin.so:system/vendor/lib/mediadrm/libdrmclearkeyplugin.so \
    vendor/boostpop/prebuilt/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so

# Googley
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/etc/sysconfig/google.xml:system/etc/sysconfig/google.xml \
    vendor/boostpop/prebuilt/etc/sysconfig/google_build.xml:system/etc/sysconfig/google_build.xml \
    vendor/boostpop/prebuilt/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \

