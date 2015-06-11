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

# Bring in camera effects
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/system/media/LMprec_508.emd:vendor/media/LMspeed_508.emd \
    vendor/boostpop/prebuilt/system/media/PFFprec_600.emd:vendor/media/PFFprec_600.emd \

# Bootanimation support
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/system/media/bootanimation.zip:system/media/bootanimation.zip
