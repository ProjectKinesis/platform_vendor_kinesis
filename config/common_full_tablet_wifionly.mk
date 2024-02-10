$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common kinesis stuff
$(call inherit-product, vendor/kinesis/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include kinesis LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/kinesis/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/kinesis/overlay/dictionaries
