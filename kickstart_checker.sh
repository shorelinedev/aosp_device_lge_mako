#!/system/bin/sh
setprop persist.radio.kickstart off

# set up modem partitions permissions
chown system:system /dev/block/platform/msm_sdcc.1/by-name/m9kefs1
chown system:system /dev/block/platform/msm_sdcc.1/by-name/m9kefs2
chown system:system /dev/block/platform/msm_sdcc.1/by-name/m9kefs3
chmod 660 /dev/block/platform/msm_sdcc.1/by-name/m9kefs1
chmod 660 /dev/block/platform/msm_sdcc.1/by-name/m9kefs2
chmod 660 /dev/block/platform/msm_sdcc.1/by-name/m9kefs3

for f in $(ls /data/qcks/); do
    (ls -l /data/qcks/$f | grep root) && rm /data/qcks/$f;
done

setprop persist.radio.kickstart on
