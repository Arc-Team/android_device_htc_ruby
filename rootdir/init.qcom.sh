#!/system/bin/sh
#

baseband=`getprop ro.baseband`
multirild=`getprop ro.multi.rild`
dsds=`getprop persist.dsds.enabled`
netmgr=`getprop ro.use_data_netmgrd`
serialnum=`getprop ro.serialno`
serialno=`getprop persist.usb.serialno`
usbchgdisabled=`getprop persist.usb.chgdisabled`
platformvalue=`cat /sys/devices/system/soc/soc0/hw_platform`

# Start ril-daemon only for targets on which radio is present
case "$baseband" in "msm" | "csfb" | "svlte2a" | "unknown")
    start ril-daemon
    start qmuxd
    case "$baseband" in "svlte2a" | "csfb")
        start qmiproxy ;;
    esac
    case "$multirild" in "true")
        case "$dsds" in "true")
            start ril-daemon1 ;;
        esac ;;
    esac
    case "$netmgr" in "true")
        start netmgrd ;;
    esac ;;
esac


# Suppress default route installation during RA for IPV6
for file in /proc/sys/net/ipv6/conf/*; do
    echo 0 > $file/accept_ra_defrtr
done


# Update USB serial number if passed from command line
case "$serialnum" in
     "") ;;
     * )
        echo "$serialnum" >> /sys/class/android_usb/android0/iSerial ;;
esac


# Allow unique persistent serial numbers for devices connected via usb
# User needs to set unique usb serial number to persist.usb.serialno
case "$serialno" in
     "") ;;
     * )
        echo "$serialno" >> /sys/class/android_usb/android0/iSerial ;;
esac


# Allow persistent usb charging disabling
# User needs to set usb charging disabled in persist.usb.chgdisabled
case "$usbchgdisabled" in
     "") ;;
     * )
        echo "$usbchgdisabled" >> /sys/module/pmic8058_charger/parameters/disabled
        echo "$usbchgdisabled" >> /sys/module/smb137b/parameters/disabled ;;
esac


# Allow USB enumeration with default PID/VID
echo 1  >> /sys/class/android_usb/f_mass_storage/lun/nofua
case "$baseband" in
     "svlte2a")
        start gpsone_daemon
        start bridgemgrd
        echo 0 >> /sys/class/android_usb/android0/enable
        echo 0x9037 >> /sys/class/android_usb/android0/idProduct
        echo 0x05C6 >> /sys/class/android_usb/android0/idVendor
        echo diag,diag_mdm >> /sys/class/android_usb/android0/f_diag/clients
        echo sdio,smd >> /sys/class/android_usb/android0/f_serial/transports
        echo diag,adb,serial,rmnet_smd_sdio,mass_storage >> /sys/class/android_usb/android0/functions
        echo 1 >> /sys/class/android_usb/android0/enable ;;
     "csfb")
        echo 0 >> /sys/class/android_usb/android0/enable
        echo 0x9031 >> /sys/class/android_usb/android0/idProduct
        echo 0x05C6 >> /sys/class/android_usb/android0/idVendor
        echo diag,diag_mdm >> /sys/class/android_usb/android0/f_diag/clients
        echo sdio,tty >> /sys/class/android_usb/android0/f_serial/transports
        echo diag,adb,serial,rmnet_sdio,mass_storage >> /sys/class/android_usb/android0/functions
        echo 1 >> /sys/class/android_usb/android0/enable ;;
     *)
        echo 0 >> /sys/class/android_usb/android0/enable
        echo 0x9025 >> /sys/class/android_usb/android0/idProduct
        echo 0x05C6 >> /sys/class/android_usb/android0/idVendor
        echo diag >> /sys/class/android_usb/android0/f_diag/clients
        echo tty,tty >> /sys/class/android_usb/android0/f_serial/transports
        echo diag,adb,serial,rmnet_smd,mass_storage >> /sys/class/android_usb/android0/functions
        echo 1 >> /sys/class/android_usb/android0/enable
        case "$baseband" in "msm")
            start port-bridge ;;
        esac ;;
esac


case "$platformvalue" in
     "Fluid")
        if [ ! -s /data/system/sensors/settings ]; then
            # If the settings file is empty, enable sensors
            # Otherwise leave the file with it's current contents
            echo 1 >> /data/system/sensors/settings
        fi
        start sensors
        setprop ro.sf.lcd_density 240
        start profiler_daemon ;;
     "Dragon")
        setprop ro.sound.alsa "WM8903" ;;
esac

start quipc_igsn
start quipc_main
chown root.system /sys/devices/platform/msm_hsusb/gadget/wakeup
chmod 220 /sys/devices/platform/msm_hsusb/gadget/wakeup
