# Generic product
PRODUCT_NAME := BoostPop
PRODUCT_BRAND := BoostPop
PRODUCT_DEVICE := generic

# Export rom name
export VENDOR := boost

# Version info
ROM_VERSION_MAJOR := 3
ROM_VERSION_MINOR := 4
ROM_VERSION_TAG := beta
ROM_VERSION_RELEASE :=

# Set 1 to use precompiled chromium
USE_PREBUILT_CHROMIUM := 1

# Block based ota flag default to off to get old style ota zip back (To get back block based zip, just enable to true.)
TARGET_USES_BLOCK_BASED_OTA := true

# Use deoxed build for debug
TARGET_USES_DEOXPREOT_OTA := true 

# Include BoostPop version
include vendor/boostpop/configs/version.mk

# Include aosp_fixes
include vendor/boostpop/configs/aosp_fixes.mk

# Include Saber config
include vendor/boostpop/configs/sm.mk
#include vendor/boostpop/configs/boost_sm.mk

# Include System settings
include vendor/boostpop/configs/system.mk

# Include custom Media files 
include vendor/boostpop/configs/media.mk

# Inlcude boost extra 
include vendor/boostpop/configs/boost_extras.mk

