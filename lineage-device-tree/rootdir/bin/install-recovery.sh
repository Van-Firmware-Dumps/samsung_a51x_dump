#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):71106560:ff06a571cafbc4c83b816b8bb89305c339ed6f95; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):61865984:fbbd8bfa6b34ee999228824c1faaff6dbc664c8d \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):71106560:ff06a571cafbc4c83b816b8bb89305c339ed6f95 && \
      (log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi

