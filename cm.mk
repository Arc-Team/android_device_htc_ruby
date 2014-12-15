# CM Stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device Stuff
$(call inherit-product, device/htc/ruby/ruby.mk)

# Release Name
PRODUCT_RELEASE_NAME := ruby

# Bootanimation
TARGET_BOOTANIMATION_NAME := 540

# Device Naming
PRODUCT_DEVICE := ruby
PRODUCT_NAME := cm_ruby
PRODUCT_BRAND := htc
PRODUCT_MODEL := Amaze 4G
PRODUCT_MANUFACTURER := HTC

# Device Overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ruby \
    PRIVATE_BUILD_DESC="2.14.531.3_R2 CL373265 release-keys" \
    BUILD_FINGERPRINT="tmous/htc_ruby/ruby:4.4/KRT16M/373265.3:user/release-keys"
