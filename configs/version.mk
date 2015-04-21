# Version info
ROM_VERSION_MAJOR := 3
ROM_VERSION_MINOR := 0
ROM_VERSION_BETA := true

# Block based ota flag default to off to get old style ota zip back (To get back block based zip, just enable to true.)
TARGET_USES_BLOCK_BASED_OTA := false

VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR)

# Boostpop release are no block base. We use block for beta testing.
ifeq ($(ROM_VERSION_BETA),true)
    TARGET_USES_BLOCK_BASED_OTA := true
    VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR)-beta
endif

export ROM_VERSION := $(VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(ROM_VERSION) \
    ro.boost.version=$(ROM_VERSION)
