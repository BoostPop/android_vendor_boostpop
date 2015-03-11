# Inherit AOSP device configuration for hammerhead
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Some common sabermod variables before common
#TARGET_ARCH := arm
#TARGET_SM_AND := 4.8
#TARGET_SM_KERNEL := 4.9
#O3_OPTIMIZATIONS := true
#ENABLE_PTHREAD := true

# Inherit common product files
$(call inherit-product, vendor/boostpop/config/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := boostpop_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="hammerhead" 
BUILD_FINGERPRINT="google/hammerhead/hammerhead:5.1/LMY47I/1767468:user/release-keys" 
PRIVATE_BUILD_DESC="hammerhead-user 5.1 LMY47I 1767468 release-keys"

