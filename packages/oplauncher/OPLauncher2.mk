include device/xiaomi/grus/packages/prebuilts/app/oplauncher/OPLauncherBlobs.mk

PRODUCT_COPY_FILES += \
    device/xiaomi/grus/packages/prebuilts/app/oplauncher/privapp-permissions-op-launcher.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-op-launcher.xml \
     device/xiaomi/grus/packages/prebuilts/app/oplauncher/op-launcher-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/op-launcher-hiddenapi-package-whitelist.xml

PRODUCT_PACKAGES += \
    OnePlusRecentsProvider \
    OPLauncher2 \
    OPWeather1 \
    OPWidget1

