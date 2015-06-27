# Android fstab file.
# The filesystem that contains the filesystem checker binary (typically /system) cannot
# specify MF_CHECK, and must come before any filesystems that do specify MF_CHECK

#<src>                                             <mnt_point>                 <type>   <mnt_flags and options>                                                            <fs_mgr_flags>
/dev/block/platform/msm_sdcc.1/by-name/radio       /vendor/firmware/misc        vfat    ro,shortname=lower                                                                  wait
/dev/block/platform/msm_sdcc.1/by-name/mdm9k       /vendor/firmware/misc_mdm    vfat    ro,shortname=lower                                                                  wait
/dev/block/platform/msm_sdcc.1/by-name/adsp        /vendor/firmware/adsp        vfat    ro,shortname=lower                                                                  wait
/dev/block/platform/msm_sdcc.1/by-name/boot        /boot                        emmc    defaults                                                                            defaults
/dev/block/platform/msm_sdcc.1/by-name/recovery    /recovery                    emmc    defaults                                                                            defaults
/dev/block/platform/msm_sdcc.1/by-name/misc        /misc                        emmc    defaults                                                                            defaults
/dev/block/platform/msm_sdcc.1/by-name/system      /system                      ext4    ro,barrier=0,errors=panic                                                           wait
/dev/block/platform/msm_sdcc.1/by-name/devlog      /devlog                      ext4    nosuid,nodev,noatime,noauto_da_alloc,journal_async_commit,barrier=0,errors=panic    wait
/dev/block/platform/msm_sdcc.1/by-name/cache       /devlog                      f2fs    nosuid,nodev,noatime,nodiratime,inline_xattr,inline_data,flush_merge                wait
/dev/block/platform/msm_sdcc.1/by-name/cache       /cache                       ext4    nosuid,nodev,noatime,noauto_da_alloc,journal_async_commit,barrier=0,errors=panic    wait
/dev/block/platform/msm_sdcc.1/by-name/cache       /cache                       f2fs    nosuid,nodev,noatime,nodiratime,inline_xattr,inline_data,flush_merge                wait
/dev/block/platform/msm_sdcc.1/by-name/userdata    /data                        ext4    nosuid,nodev,noatime,noauto_da_alloc,journal_async_commit,barrier=0,errors=panic    wait,encryptable=/dev/block/platform/msm_sdcc.1/by-name/extra
/dev/block/platform/msm_sdcc.1/by-name/userdata    /data                        f2fs    nosuid,nodev,noatime,nodiratime,inline_xattr,inline_data,flush_merge                wait,encryptable=/dev/block/platform/msm_sdcc.1/by-name/extra

# Internal
/devices/platform/msm_sdcc.1/mmc_host/mmc0         auto                         auto    defaults                                                                            voldmanaged=sdcard0:36,nonremovable,noemulatedsd

# SDCard
/devices/platform/msm_sdcc.3/mmc_host/mmc2         auto                         auto    defaults                                                                            voldmanaged=sdcard1:auto,noemulatedsd

# USB
/devices/platform/msm_hsusb_host/usb               auto                         auto    defaults                                                                            voldmanaged=usbdisk:auto,noemulatedsd
