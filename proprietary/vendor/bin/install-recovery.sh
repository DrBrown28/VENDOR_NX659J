#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:100663296:a6a3d37911b36bd50d23ff9353b1035978f50ace; then
  applypatch \
          --flash /vendor/etc/recovery.img \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:100663296:a6a3d37911b36bd50d23ff9353b1035978f50ace && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
