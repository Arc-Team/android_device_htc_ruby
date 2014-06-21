# System
/dev/block/mmcblk0p22    /boot        emmc    defaults                defaults
/dev/block/mmcblk0p23    /recovery    emmc    defaults                defaults
/dev/block/mmcblk0p29    /system      ext4    rw,noatime,barrier=0    wait
/dev/block/mmcblk0p30    /cache       ext4    noatime,nosuid,nodev,barrier=0,data=ordered,noauto_da_alloc,journal_async_commit,errors=panic   wait
/dev/block/mmcblk0p31    /data        ext4    noatime,nosuid,nodev,barrier=0,data=ordered,noauto_da_alloc,journal_async_commit,errors=panic   wait
/dev/block/mmcblk0p32    /devlog      ext4    noatime,nosuid,nodev,barrier=0,data=ordered,noauto_da_alloc,journal_async_commit,errors=panic   wait

# Internal
/devices/platform/msm_sdcc.1/mmc_host/mmc0    auto    auto            defaults    voldmanaged=sdcard0:36,nonremovable,noemulatedsd

# External
/devices/platform/msm_sdcc.3/mmc_host/mmc2    auto    auto            defaults    voldmanaged=sdcard1:auto

# USB Disk
/devices/platform/msm_hsusb.0/usb1            auto    auto            defaults    voldmanaged=usbdisk:auto
