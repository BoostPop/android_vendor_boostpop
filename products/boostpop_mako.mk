# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit sabermod device configuration
include vendor/boostpop/products/sm_mako.mk

# Inherit common product files
$(call inherit-product, vendor/boostpop/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := boostpop_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="okkam" 
BUILD_FINGERPRINT="google/occam/mako:5.0.2/LRX22G/1602158:user/release-keys" 
PRIVATE_BUILD_DESC="occam-user 5.0.2 LRX22G 1602158 release-keys"

