#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/perseus/device.mk)

# Inherit some common Palladium stuff.
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_BLUR := true

#PALLADIUM-PROPS
PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladiumdevice.maintainer=MICKENKNG \
    ro.palladiumdevice.cpu=SD845 \
    ro.palladiumdevice.display=6.39 \
    ro.palladiumdevice.displaytype=AMOLED \
    ro.palladiumdevice.battery=3200mAh \
    ro.palladiumdevice.camera=12MP+12MP

#OFFICIAL
PALLADIUM_BUILDTYPE := UNOFFICIAL

#GAPPS
PALLADIUM_BUILD_VARIANT := GAPPS
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := palladium_perseus
PRODUCT_DEVICE := perseus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 3
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/perseus/perseus:10/QKQ1.190828.002/V11.0.3.0.QEEMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="perseus-user 10 QKQ1.190828.002 V11.0.3.0.QEEMIXM release-keys" \
    PRODUCT_NAME="perseus"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
