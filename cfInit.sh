#!/bin/bash

# 添加 Cloudflare GPG 密钥
echo "添加 Cloudflare GPG 密钥..."
sudo mkdir -p --mode=0755 /usr/share/keyrings
curl -fsSL https://pkg.cloudflare.com/cloudflare-main.gpg | sudo tee /usr/share/keyrings/cloudflare-main.gpg >/dev/null
echo "Cloudflare GPG 密钥已添加。"

# 将该存储库添加到你的 apt 存储库
echo "添加 Cloudflare apt 存储库..."
echo 'deb [signed-by=/usr/share/keyrings/cloudflare-main.gpg] https://pkg.cloudflare.com/cloudflared any main' | sudo tee /etc/apt/sources.list.d/cloudflared.list
echo "Cloudflare apt 存储库已添加。"

# 安装 cloudflared
echo "更新 apt 仓库并安装 cloudflared..."
sudo apt-get update && sudo apt-get install -y cloudflared
echo "cloudflared 安装完成。"

echo "脚本执行完毕。"
