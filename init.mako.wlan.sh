#!/system/bin/sh
setprop wlan.conn_init off

# set up misc partition permissions
chown root:system /dev/block/platform/msm_sdcc.1/by-name/misc
chmod 660 /dev/block/platform/msm_sdcc.1/by-name/misc

# kick start conn_init
setprop wlan.conn_init on
