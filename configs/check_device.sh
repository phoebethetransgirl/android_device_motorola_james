#!/sbin/sh

SKU=`getprop ro.boot.hardware.sku`

rm -rf /vendor/app/LineageActions
rm /vendor/etc/permissions/android.hardware.vulkan.compute-0.xml
rm /vendor/etc/permissions/android.hardware.vulkan.level-0.xml
rm /vendor/etc/permissions/android.hardware.vulkan.version-1_1.xml

if [ "$SKU" = "XT1921-2" ]; then
    rm /vendor/etc/permissions/unavail.android.hardware.fingerprint.xml
    rm /vendor/etc/permissions/unavail.android.hardware.gyroscope.xml
fi
