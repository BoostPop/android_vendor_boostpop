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

# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit sabermod device configuration
include vendor/boostpop/products/sm_mako.mk

# Inherit common product files
$(call inherit-product, vendor/boostpop/boostpop_main.mk)

# Setup device specific product configuration
PRODUCT_NAME := boostpop_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="okkam" 
BUILD_FINGERPRINT="google/occam/mako:5.1.1/LMY47V/1836172:user/release-keys" 
PRIVATE_BUILD_DESC="occam-user 5.1.1 LMY47V 1836172 release-keys"

