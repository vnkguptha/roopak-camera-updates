#!/bin/bash

cp -r dashboard/* /home/roopak/roopak-camera/dashboard/

cp scripts/wifi_manager.py \
/home/roopak/roopak-camera/

cp scripts/camera_stream.sh \
/home/roopak/roopak-camera/

chmod +x \
/home/roopak/roopak-camera/camera_stream.sh

sudo systemctl restart camera.service
sudo systemctl restart roopak-dashboard.service

echo '{"version":"1.0.2"}' \
> /home/roopak/roopak-camera/version.json

sudo reboot