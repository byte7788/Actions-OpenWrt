#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source

# 用6.1.137内核版本
git checkout 4f5a34e801dd41fe9d4125e7caa5056aa6575814

# 写入Makefile改内核版本
sed -i '14i KERNEL_TESTING_PATCHVER:=5.15' target/linux/amlogic/Makefile
sed -i "s/KERNEL_PATCHVER:=*.*/KERNEL_PATCHVER:=6.1/g" target/linux/amlogic/Makefile
sed -i "s/KERNEL_TESTING_PATCHVER:=*.*/KERNEL_TESTING_PATCHVER:=6.1/g" target/linux/amlogic/Makefile

#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
