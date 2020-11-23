# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.fluence.speaker=false

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-threads=2

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.use_buffer_age=false

# GPU
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.sensors=james \
    ro.vendor.sensors.amd=false \
    ro.vendor.sensors.gravity=false \
    ro.vendor.sensors.laccel=false
