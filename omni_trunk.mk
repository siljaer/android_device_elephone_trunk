# Copyright (C) 2016 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 640x362

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit AOSP device configuration
$(call inherit-product, device/elephone/trunk/trunk.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Override AOSP build properties
PRODUCT_NAME := omni_trunk
PRODUCT_DEVICE := trunk
PRODUCT_BRAND := elephone
PRODUCT_MODEL := trunk
PRODUCT_MANUFACTURER := elephone

PRODUCT_GMS_CLIENTID_BASE := android-elephone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=trunk
# \
#    BUILD_FINGERPRINT=elephone/trunk/trunk:7.1.1/N4F26O/3587886:user/release-keys \
#    PRIVATE_BUILD_DESC="trunk-user 7.1.1 N4F26O 3587886 release-keys"
