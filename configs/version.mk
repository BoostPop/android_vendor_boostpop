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
