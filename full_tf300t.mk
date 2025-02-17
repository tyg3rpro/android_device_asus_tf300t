# Copyright (C) 2011 The Android Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, device/asus/tf300t/device_tf300t.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Set the physical display size with PRODUCT_AAPT_CONFIG
# Options are small(~2"-3"), normal(~3"-4"), large(~4"-7"), xlarge(~7" and larger)
PRODUCT_AAPT_CONFIG := xlarge
# Set the preferred asset density with PRODUCT_AAPT_PREF_CONFIG
# See android CCD for valid options
PRODUCT_AAPT_PREF_CONFIG := mdpi
# A list of dpis to select prebuilt apk, in precedence order.
# See android CCD for valid options
PRODUCT_AAPT_PREBUILT_DPI := mdpi ldpi tvdpi hdpi xhdpi

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_tf300t
PRODUCT_DEVICE := tf300t
PRODUCT_BRAND := Asus
PRODUCT_MODEL := TF300T
