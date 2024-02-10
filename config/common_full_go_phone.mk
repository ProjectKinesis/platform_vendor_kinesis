# Set kinesis specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit full common kinesis stuff
$(call inherit-product, vendor/kinesis/config/common_full_phone.mk)
