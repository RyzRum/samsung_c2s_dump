#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):69009408:0d023dc4accaf8e4df1897a155ccbc7ebe841726; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):61865984:57d8fc579b2bd6a83ac81d3e37bd1f407865c66a \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):69009408:0d023dc4accaf8e4df1897a155ccbc7ebe841726 && \
      (/vendor/bin/log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (/vendor/bin/log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  /vendor/bin/log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi

