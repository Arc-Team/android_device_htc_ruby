# System
/dev/block/platform/msm_sdcc.1/by-name/radio       /vendor/firmware/misc        vfat    ro,shortname=lower      wait
/dev/block/platform/msm_sdcc.1/by-name/mdm9k       /vendor/firmware/misc_mdm    vfat    ro,shortname=lower      wait
/dev/block/platform/msm_sdcc.1/by-name/adsp        /vendor/firmware/adsp        vfat    ro,shortname=lower      wait
/dev/block/platform/msm_sdcc.1/by-name/boot        /boot                        emmc    defaults                defaults
/dev/block/platform/msm_sdcc.1/by-name/recovery    /recovery                    emmc    defaults                defaults
/dev/block/platform/msm_sdcc.1/by-name/misc        /misc                        emmc    defaults                defaults
/dev/block/platform/msm_sdcc.1/by-name/system      /system                      ext4    rw,noatime,barrier=0    wait
/dev/block/platform/msm_sdcc.1/by-name/cache       /cache                       ext4    noatime,nosuid,nodev,barrier=0,data=ordered,noauto_da_alloc,journal_async_commit,errors=panic   wait
/dev/block/platform/msm_sdcc.1/by-name/userdata    /data                        ext4    noatime,nosuid,nodev,barrier=0,data=ordered,noauto_da_alloc,journal_async_commit,errors=panic   wait
/dev/block/platform/msm_sdcc.1/by-name/devlog      /devlog                      ext4    noatime,nosuid,nodev,barrier=0,data=ordered,noauto_da_alloc,journal_async_commit,errors=panic   wait,encryptable=/dev/block/platform/msm_sdcc.1/by-name/extra

# Internal
/devices/platform/msm_sdcc.1/mmc_host/mmc0         auto                         auto    defaults                voldmanaged=sdcard0:36,nonremovable,noemulatedsd

# SDCard
/devices/platform/msm_sdcc.3/mmc_host/mmc2         auto                         auto    defaults                voldmanaged=sdcard1:auto

# USB
/devices/platform/msm_hsusb_host/usb               auto                         auto    defaults                voldmanaged=usbdisk:auto
