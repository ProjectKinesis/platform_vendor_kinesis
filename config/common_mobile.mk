# Inherit common mobile kinesis stuff
$(call inherit-product, vendor/kinesis/config/common.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

ifneq ($(WITH_KINESIS_CHARGER),false)
PRODUCT_PACKAGES += \
    kinesis_charger_animation \
    kinesis_charger_animation_vendor
endif

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet
