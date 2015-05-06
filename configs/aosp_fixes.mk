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
    keyguard.no_require_sim=true \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    dalvik.vm.image-dex2oat-filter=everything \
    dalvik.vm.dex2oat-filter=everything

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

