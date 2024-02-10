# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Project Kinesis System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.kinesis.version=$(TEQUILA_VERSION) \
    ro.kinesis.display.version=$(TEQUILA_DISPLAY_VERSION) \
    ro.kinesis.releasetype=$(TEQUILA_BUILDTYPE) \
    ro.kinesis.build.version=$(TEQUILA_PLATFORM_VERSION) \
    ro.modversion=$(TEQUILA_VERSION) \
