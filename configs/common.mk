# Generic product
PRODUCT_NAME := Boostpop
PRODUCT_BRAND := Boostpop
PRODUCT_DEVICE := generic

# Include BoostPop version
include vendor/boostpop/boostinfo.mk
include vendor/boostpop/configs/version.mk

# Include aosp_fixes
include vendor/boostpop/configs/aosp_fixes.mk

# Include Saber config
include vendor/boostpop/configs/sm.mk

# Include System settings
include vendor/boostpop/configs/system.mk

# Include custom Media files 
include vendor/boostpop/configs/media.mk

# Inlcude boost extra 
include vendor/boostpop/configs/boost_extras.mk
