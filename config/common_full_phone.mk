# Inherit full common kinesis stuff
$(call inherit-product, vendor/kinesis/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include kinesis LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/kinesis/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/kinesis/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

$(call inherit-product, vendor/kinesis/config/telephony.mk)
