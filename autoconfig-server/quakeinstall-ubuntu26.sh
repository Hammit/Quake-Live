#!/bin/bash
# Tested on Ubuntu 26.04 LTS.
# Package 'lib32gcc1' is now 'lib32gcc-s1', and steamcmd requires the +force_install_dir arg to come before the +login arg.

sudo dpkg --add-architecture i386

sudo apt update
sudo apt install steamcmd lib32gcc-s1 lib32z1 lib32stdc++6 -y

steamcmd +force_install_dir ./steamapps/common/qlds/ +login anonymous +app_update 349090 +quit
