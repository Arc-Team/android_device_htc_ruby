
# Copy Bluetooth firmware, since BCM4329 is a BT/WiFi chip
PRODUCT_COPY_FILES += \
    device/htc/ruby/proprietary/etc/firmware/bcm4330.hcd:system/vendor/firmware/bcm4330.hcd \
    device/htc/ruby/proprietary/etc/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd
