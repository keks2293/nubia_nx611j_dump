#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:19387692:2daf778e7e06803c09ac5dc4dc079772e57f92ba; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:13202728:8e91b4d25ccc91d0606e232a1813f5ea5f7a4c06 EMMC:/dev/block/bootdevice/by-name/recovery 2daf778e7e06803c09ac5dc4dc079772e57f92ba 19387692 8e91b4d25ccc91d0606e232a1813f5ea5f7a4c06:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
