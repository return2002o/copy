#!/bin/bash

# 安装 Cloudflare Tunnel 服务
echo "正在安装 Cloudflare Tunnel 服务..."
sudo cloudflared service install eyJhIjoiMmVkNzRmZmIyYTU2YTIwN2QwZTc5Yjg3MTZkNjExYmQiLCJ0IjoiNWYwMzBkZDMtYTVhYi00MDdmLWEwOTctMDgwZTQwNGQ0YThlIiwicyI6IlpEVXdOVEl5TlRndE9EYzBOaTAwTVdNNUxXRmtOR1V0WXpkaE5HSTFNRFl3TmpsbCJ9
echo "Cloudflare Tunnel 服务安装完成。"

echo "请查看 cloudflared 的日志以确认服务是否成功启动。"
echo "你可以使用命令 'sudo journalctl -u cloudflared' 来查看日志。"

echo "脚本执行完毕。"
