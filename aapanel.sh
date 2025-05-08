#!/bin/bash

URL="https://www.aapanel.com/script/install_7.0_en.sh"

if [ -f /usr/bin/curl ]; then
  curl -ksSO "$URL"
else
  if command -v wget >/dev/null 2>&1; then
    wget --no-check-certificate -O install_7.0_en.sh "$URL"
  else
    echo "请先安装 curl 或 wget。"
    exit 1
  fi
fi

bash install_7.0_en.sh aapanel
