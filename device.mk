#
# Copyright (C) 2024 VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

MIUICAMERA_VENDOR_PATH := vendor/xiaomi/miuicamera-nuwa

# Inherit from the proprietary version
$(call inherit-product, $(MIUICAMERA_VENDOR_PATH)/miuicamera--nuwa-vendor.mk)

# Camera Extensions
PRODUCT_SYSTEM_PROPERTIES += \
    ro.camerax.extensions.enabled=true

# Shims
PRODUCT_PACKAGES += \
    libgui_camera_shim

# Symlinks
PRODUCT_PACKAGES += \
    miui_camera_libcamera_algoup_symlink \
    miui_camera_libcamera_mianode_symlink \
    miui_camera_libmicampostproc_symlink \
    miui_camera_campostproc_vendor_symlink \
    miui_camera_libOpenCL_symlink \
    miui_camera_libmqsas_symlink \
    miui_camera_libcameraimpl_symlink \
    miui_camera_libopencl_camera_symlink

# Properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.com.google.lens.oem_camera_package=com.android.camera \
    ro.miui.notch=1 \
    persist.sys.cam.skip_detach_image=true

# Logging
PRODUCT_SYSTEM_PROPERTIES += \
   log.tag.CHIUSECASE=ERROR

PRODUCT_VENDOR_PROPERTIES += \
   persist.vendor.camera.logInfoMask=false

# Qualcomm Gralloc
PRODUCT_PACKAGES += \
     gralloc.qcom

# MiSys HIDL deps
PRODUCT_PACKAGES += \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0.vendor \
    android.hidl.memory.block@1.0 \
    android.hidl.memory.block@1.0.vendor \
    android.hidl.memory@1.0-impl

# RRO Overlays
PRODUCT_PACKAGES += \
    MiuiCameraOverlay \
    MiuiCameraOverlayLos \
    MiuiCameraOverlayAosp

# System Properties
PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.camera.privapp.list=com.android.camera \
    ro.com.google.lens.oem_camera_package=com.android.camera