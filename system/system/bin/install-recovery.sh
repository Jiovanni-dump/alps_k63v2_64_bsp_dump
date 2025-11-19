#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:14412704:600e5472ac5fee041fa7222489210a56afb9ba6b; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9165728:e9e0ba006781e97b271acd829020ec42cae00444 EMMC:/dev/block/platform/bootdevice/by-name/recovery 600e5472ac5fee041fa7222489210a56afb9ba6b 14412704 e9e0ba006781e97b271acd829020ec42cae00444:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
