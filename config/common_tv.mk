# Inherit common kinesis stuff
$(call inherit-product, vendor/kinesis/config/common.mk)

# Inherit kinesis atv device tree
$(call inherit-product, device/kinesis/atv/kinesis_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

PRODUCT_PACKAGE_OVERLAYS += vendor/kinesis/overlay/tv
