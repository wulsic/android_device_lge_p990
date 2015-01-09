#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2013 The OmniROM Project
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
#

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p990/p990.mk)

# Discard inherited values and use our own instead.
PRODUCT_MODEL := Optimus 2X
PRODUCT_BRAND := LGE
PRODUCT_NAME := omni_p990
PRODUCT_DEVICE := P990
PRODUCT_MANUFACTURER := LGE

# Release name and versioning
PRODUCT_RELEASE_NAME := Optimus2X
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p990

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=star_open_eu BUILD_ID=IMM76L BUILD_FINGERPRINT=lge/star_open_eu/star:4.0.4/IMM76L/LG-P990-P99030a.1211302332:user/release-keys PRIVATE_BUILD_DESC="star_open_eu-user 4.0.4 IMM76L LG-P990-P99030a.1211302332 release-keys"
