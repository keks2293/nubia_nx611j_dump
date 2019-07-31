#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:19297580:95ecf918591f4921a34c833bc19be0f0416a5b7f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:13202728:d60276be3d895a7e892fd408c969b31dfe84835d EMMC:/dev/block/bootdevice/by-name/recovery 95ecf918591f4921a34c833bc19be0f0416a5b7f 19297580 d60276be3d895a7e892fd408c969b31dfe84835d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
