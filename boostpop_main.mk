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

# Generic product
PRODUCT_NAME := BoostPop
PRODUCT_BRAND := BoostPop
PRODUCT_DEVICE := generic

# Export rom name
export VENDOR := boost

# Version info
ROM_VERSION_MAJOR := 4
ROM_VERSION_MINOR := 0.5
ROM_VERSION_TAG := beta
ROM_VERSION_RELEASE := false

# Set 1 to use precompiled chromium
USE_PREBUILT_CHROMIUM := 1

# Block based ota flag default to off to get old style ota zip back (To get back block based zip, just enable to true.)
export TARGET_USES_BLOCK_BASED_OTA := false 

# Use deoxed build for debug
export TARGET_USES_DEOXPREOT_OTA := false 

# Include BoostPop version
include vendor/boostpop/configs/version.mk

# Include aosp_fixes
include vendor/boostpop/configs/aosp_fixes.mk

# Include System settings
include vendor/boostpop/configs/system.mk

# Include custom Media files 
include vendor/boostpop/configs/media.mk

# Inlcude boost extra 
include vendor/boostpop/configs/boost_extras.mk

# Inherit sabermod vendor
SM_VENDOR := vendor/sm
include $(SM_VENDOR)/Main.mk
