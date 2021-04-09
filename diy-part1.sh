#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Remove useless packages
echo '删除旧版argon'
rm -rf ./package/lean/luci-theme-argon

# Add new packages
# > Theme
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/lean/luci-theme-opentomcat
# > JD
# git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/lean/luci-app-jd-dailybonus
# > SmartDNS
git clone https://github.com/pymumu/openwrt-smartdns package/lean/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns
# mkdir -p package/lean/smartdns && wget -P package/lean/smartdns https://raw.githubusercontent.com/pymumu/openwrt-smartdns/master/Makefile
# sed -i 's/PKG_VERSION:=./PKG_VERSION:=5.2020.04/g;s/PKG_SOURCE_VERSION:=./PKG_SOURCE_VERSION:=7af6f475da372842c48f570f44b52f48616b11d6/g' package/lean/smartdns/Makefile
# git clone -b lede https://github.com/shaoyou11/luci-app-smartdns.git package/lean/luci-app-smartdns
