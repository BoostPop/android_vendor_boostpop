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

# Stock ui sounds
PRODUCT_COPY_FILES += \
    vendor/boostpop/prebuilt/system/media/audio/ui/audio_end.ogg:system/media/audio/ui/audio_end.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/audio_initiate.ogg:system/media/audio/ui/audio_initiate.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/Dock.ogg:system/media/audio/ui/Dock.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/KeypressInvalid.ogg:system/media/audio/ui/KeypressInvalid.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/Lock.ogg:system/media/audio/ui/Lock.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/NFCFailure.ogg:system/media/audio/ui/NFCFailure.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/NFCInitiated.ogg:system/media/audio/ui/NFCInitiated.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/NFCSuccess.ogg:system/media/audio/ui/NFCSuccess.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/NFCTransferComplete.ogg:system/media/audio/ui/NFCTransferComplete.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/NFCTransferInitiated.ogg:system/media/audio/ui/NFCTransferInitiated.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/Trusted.ogg:system/media/audio/ui/Trusted.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/Undock.ogg:system/media/audio/ui/Undock.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/VideoStop.ogg:system/media/audio/ui/VideoStop.ogg \
    vendor/boostpop/prebuilt/system/media/audio/ui/WirelessChargingStarted.ogg:system/media/audio/ui/WirelessChargingStarted.ogg
