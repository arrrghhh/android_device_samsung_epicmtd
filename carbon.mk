# Release name
PRODUCT_RELEASE_NAME := EpicMTD

# Bootanimation, non-jpegOptimized
PRODUCT_COPY_FILES += \
    device/samsung/epicmtd/prebuilt/media/480.zip:system/media/bootanimation.zip

# Inherit some common Carbon stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Inherit CDMA stuff
$(call inherit-product, vendor/carbon/config/common_cdma.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/epicmtd/full_epicmtd.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := epicmtd
PRODUCT_NAME := carbon_epicmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SPH-D700
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SPH-D700 TARGET_DEVICE=SPH-D700 BUILD_FINGERPRINT=sprint/SPH-D700/SPH-D700:2.3.5/GINGERBREAD/EI22:user/release-keys PRIVATE_BUILD_DESC="SPH-D700-user 2.3.5 GINGERBREAD EI22 release-keys"
