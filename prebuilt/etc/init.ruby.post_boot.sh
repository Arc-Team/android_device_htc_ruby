#!/system/bin/sh
#

echo 1 >> /sys/module/rpm_resources/enable_low_power/L2_cache
echo 1 >> /sys/module/rpm_resources/enable_low_power/pxo
echo 2 >> /sys/module/rpm_resources/enable_low_power/vdd_dig
echo 2 >> /sys/module/rpm_resources/enable_low_power/vdd_mem
echo 1 >> /sys/module/rpm_resources/enable_low_power/rpm_cpu
echo 1 >> /sys/module/pm_8x60/modes/cpu0/power_collapse/suspend_enabled
echo 1 >> /sys/module/pm_8x60/modes/cpu1/power_collapse/suspend_enabled
echo 1 >> /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/suspend_enabled
echo 1 >> /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/suspend_enabled
echo 1 >> /sys/module/pm_8x60/modes/cpu0/power_collapse/idle_enabled
echo 1 >> /sys/module/pm_8x60/modes/cpu1/power_collapse/idle_enabled
echo 1 >> /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/idle_enabled
echo 1 >> /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/idle_enabled
echo 1 >> /sys/module/pm_8660/modes/cpu0/power_collapse/suspend_enabled
echo 1 >> /sys/module/pm_8660/modes/cpu1/power_collapse/suspend_enabled
echo 1 >> /sys/module/pm_8660/modes/cpu0/standalone_power_collapse/suspend_enabled
echo 1 >> /sys/module/pm_8660/modes/cpu1/standalone_power_collapse/suspend_enabled
echo 1 >> /sys/module/pm_8660/modes/cpu0/power_collapse/idle_enabled
echo 1 >> /sys/module/pm_8660/modes/cpu1/power_collapse/idle_enabled
echo 1 >> /sys/module/pm_8660/modes/cpu0/standalone_power_collapse/idle_enabled
echo 1 >> /sys/module/pm_8660/modes/cpu1/standalone_power_collapse/idle_enabled
echo 1 >> /sys/devices/system/cpu/cpufreq/interactive/io_is_busy
chown system /sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay
chown system /sys/devices/system/cpu/cpufreq/interactive/boost
chown system /sys/devices/system/cpu/cpufreq/interactive/boostpulse
chown system /sys/devices/system/cpu/cpufreq/interactive/boostpulse_duration
chown system /sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load
chown system /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq
chown system /sys/devices/system/cpu/cpufreq/interactive/io_is_busy
chown system /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
chown system /sys/devices/system/cpu/cpufreq/interactive/target_loads
chown system /sys/devices/system/cpu/cpufreq/interactive/timer_rate
chown system /sys/devices/system/cpu/cpufreq/interactive/timer_slack
chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
chown system /sys/devices/system/cpu/cpufreq/ondemand/down_differential
chown system /sys/devices/system/cpu/cpufreq/ondemand/input_boost
chown system /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy
chown system /sys/devices/system/cpu/cpufreq/ondemand/optimal_freq
chown system /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor
chown system /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
chown system /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate_min
chown system /sys/devices/system/cpu/cpufreq/ondemand/sync_freq
chown system /sys/devices/system/cpu/cpufreq/ondemand/up_threshold
chown system /sys/devices/system/cpu/cpufreq/ondemand/up_threshold_any_cpu_load
chown root.system /sys/devices/system/cpu/mfreq
chmod 220 /sys/devices/system/cpu/mfreq
chown root.system /sys/devices/system/cpu/cpu1/online
chmod 664 /sys/devices/system/cpu/cpu1/online

# Post-setup services
#start mpdecision
#start thermald

# Wake-on-Volume
echo 1 >> /sys/keyboard/vol_wakeup

emmc_boot=`getprop ro.emmc`
case "$emmc_boot" in "1")
    chown system /sys/devices/platform/rs300000a7.65536/force_sync
    chown system /sys/devices/platform/rs300000a7.65536/sync_sts
    chown system /sys/devices/platform/rs300100a7.65536/force_sync
    chown system /sys/devices/platform/rs300100a7.65536/sync_sts ;;
esac
