#
# Copyright (C) 2024 VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

MIUICAMERA_PATH := device/xiaomi/miuicamera-nuwa

# Inherit from the proprietary version
include vendor/xiaomi/miuicamera-nuwa/BoardConfigVendor.mk

# Permissions
PRODUCT_COPY_FILES += \
     $(call find-copy-subdir-files,*,$(MIUICAMERA_PATH)/configs/permissions/,$(TARGET_COPY_OUT_SYSTEM)/etc)

# CameraX Config Overwrite
PRODUCT_COPY_FILES += \
     $(MIUICAMERA_PATH)/configs/camera/camxoverridesettings.txt:$(TARGET_COPY_OUT_VENDOR)/etc/camera/camxoverridesettings.txt

# Camera Extensions permissions
PRODUCT_COPY_FILES += \
    $(MIUICAMERA_PATH)/configs/permissions/extensions/camerax-vendor-extensions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/camerax-vendor-extensions.xml

# Device-Features
PRODUCT_COPY_FILES += \
     $(MIUICAMERA_PATH)/configs/device_features/nuwa.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/nuwa.xml \
     $(MIUICAMERA_PATH)/configs/device_features/nuwain.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/nuwain.xml

# Sepolicy Camera
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(MIUICAMERA_PATH)/sepolicy/camera/vendor

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(MIUICAMERA_PATH)/sepolicy/camera/private

# Sepolicy MiSys
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(MIUICAMERA_PATH)/sepolicy/misys/vendor

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(MIUICAMERA_PATH)/sepolicy/misys/private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(MIUICAMERA_PATH)/sepolicy/misys/public
