# Boostpop release are not block based and comes with the pre-odex system apk. 
# We use other settings for for beta testing.

ifeq ($(ROM_VERSION_TAG), )
    VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR)-$(shell date -u +%Y_%m_%d)
else
    VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR)-$(ROM_VERSION_TAG)
endif

ifeq ($(ROM_VERSION_RELEASE),true)
    TARGET_USES_BLOCK_BASED_OTA :=false
    TARGET_USES_DEOXPREOT_OTA :=true
    VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR)
endif

export ROM_VERSION := $(VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(ROM_VERSION) \
    ro.boost.version=$(ROM_VERSION)
