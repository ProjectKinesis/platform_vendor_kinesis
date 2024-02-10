# Inherit common kinesis stuff
$(call inherit-product, vendor/kinesis/config/common.mk)

# Inherit kinesis car device tree
$(call inherit-product, device/kinesis/car/kinesis_car.mk)
