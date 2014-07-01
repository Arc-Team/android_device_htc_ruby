#!/system/bin/sh
# Only msm8660

baseband=`getprop ro.baseband`
multirild=`getprop ro.multi.rild`
dsds=`getprop persist.dsds.enabled`
netmgr=`getprop ro.use_data_netmgrd`
serialnum=`getprop ro.serialno`
serialno=`getprop persist.usb.serialno`
usbchgdisabled=`getprop persist.usb.chgdisabled`
platformvalue=`cat /sys/devices/system/soc/soc0/hw_platform`

case "$baseband" in
     "msm" | "csfb" | "svlte2a" | "unknown")
        start ril-daemon
        start qmuxd
        case "$baseband" in
             "svlte2a" | "csfb")
                start qmiproxy
        esac
        case "$multirild" in
             "true")
                case "$dsds" in
                     "true")
                        start ril-daemon1
                esac
        esac
        case "$netmgr" in
             "true")
                start netmgrd
        esac
esac

# Suppress default route installation during RA for IPV6; user space will take care of this
for file in /proc/sys/net/ipv6/conf/*; do
    echo 0 > $file/accept_ra_defrtr
done

# Update USB serial number if passed from command line
case "$serialnum" in
     "") ;; #Do nothing, use default serial number or check for persist one below
     * )
        echo "$serialnum" > /sys/class/android_usb/android0/iSerial
esac

# Allow unique persistent serial numbers for devices connected via usb
# User needs to set unique usb serial number to persist.usb.serialno
case "$serialno" in
     "") ;; #Do nothing here
     * )
        echo "$serialno" > /sys/class/android_usb/android0/iSerial
esac

# Allow persistent usb charging disabling
# User needs to set usb charging disabled in persist.usb.chgdisabled
case "$usbchgdisabled" in
     "") ;; #Do nothing here
     * )
        echo "$usbchgdisabled" > /sys/module/pmic8058_charger/parameters/disabled
        echo "$usbchgdisabled" > /sys/module/smb137b/parameters/disabled
esac

# Allow USB enumeration with default PID/VID
echo 1  > /sys/class/android_usb/f_mass_storage/lun/nofua

# Start gpsone_daemon for SVLTE Type I & II devices
case "$baseband" in
     "svlte2a")
        start gpsone_daemon
        start bridgemgrd
esac

start quipc_igsn
start quipc_main

case "$platformvalue" in
     "Fluid")
        if [ ! -s /data/system/sensors/settings ]; then
            # If the settings file is empty, enable sensors
            # Otherwise leave the file with it's current contents
            echo 1 > /data/system/sensors/settings
        fi
        start sensors
        setprop ro.sf.lcd_density 240
        start profiler_daemon;;
    
     "Dragon")
        setprop ro.sound.alsa "WM8903";;
esac
chown root.system /sys/devices/platform/msm_hsusb/gadget/wakeup
chmod 220 /sys/devices/platform/msm_hsusb/gadget/wakeup
