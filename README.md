# proprietary_device_xiaomi_miuicamera-nuwa

Prebuilt modded MIUI/Leica Camera 5.0 for Poco F3/Redmi K40/Mi 11x (alioth), to include in custom ROM builds.

### How to use?

1. Clone this repo to `device/xiaomi/miuicamera-nuwa`
2. Clone https://github.com/lofx-lee/vendor_xiaomi_miuicamera-nuwa to 'vendor/xiaomi/miuicamera-nuwa'
3. Inherit it from `device.mk` in device tree:
```
# Inherit MiuiCamera
$(call inherit-product-if-exists, device/xiaomi/miuicamera-nuwa/device.mk)
```
4. add it from `BoardConfig.mk` in device tree:
```
# MiuiCamera
-include device/xiaomi/miuicamera-nuwa/BoardConfig.mk
```
5. Ensure that you added misys vintf dependencies in your framework_compatibility_matrix.xml:

```
    <hal format="hidl" optional="true">
        <name>vendor.xiaomi.hardware.misys</name>
        <version>1.0</version>
        <version>2.0</version>
        <version>3.0</version>
        <version>4.0</version>
        <interface>
            <name>IMiSys</name>
            <instance>default</instance>
        </interface>
    </hal>
```
5.1 Reference - https://github.com/PocoF3Releases/device_xiaomi_sm8250-common/commit/26b57664835c487db278dbda83fe936ceb831c63
