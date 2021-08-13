# Introduction
The purpose of this repo is, to enable users to use both: [Kodi](https://kodi.tv) and [moonlight-qt](https://github.com/moonlight-stream/moonlight-qt) in a convinient way. Follow the steps on [Installation](#Installation-Guide). Remove Kodi from autostart if there already. Following the guide will start kodi

# Setup
The configuration in which the usage of this was tested:
- Rasberry Pi 4 with raspbian os:
~~~~
Raspberry Pi 4 Model B Rev 1.1
PRETTY_NAME="Raspbian GNU/Linux 10 (buster)"
NAME="Raspbian GNU/Linux"
VERSION_ID="10"
VERSION="10 (buster)"
~~~~

- Kodi version: 18.7
- moonlight-qt: 3.1.4-2

# Installation Guide
The usage of the plugin and combined services requires that both: kodi and moonlight are running as root. It may also be possible to set proper user right. It is assumed, that a clean raspbian OS is installed which booting to console not X-Server.

Start a new console to the pi and login as root, execute all steps in this console.
~~~~{.sh}
sudo -i
~~~~

## Install kodi
~~~~{.sh}
apt update && apt upgrade -y
apt install kodi -y
~~~~

## Install moonlight
~~~~{.sh}
curl -1sLf 'https://dl.cloudsmith.io/public/moonlight-game-streaming/moonlight-qt/setup.deb.sh' | bash
apt install moonlight-qt -y
~~~~

## Clone this repo
~~~~{.sh}
apt install git -y
git clone https://github.com/saschiwy/script.start.moonlight-qt.git
~~~~

## Install services
~~~~{.sh}
cp script.start.moonlight-qt/services/kodi.service /etc/systemd/system/
cp script.start.moonlight-qt/services/moonlight-qt.service /etc/systemd/system/
cp script.start.moonlight-qt/services/moonlight-qt-runner.sh /usr/share/moonlight-qt-runner.sh
chmod +x /usr/share/moonlight-qt-runner.sh
systemctl enable kodi
~~~~

## Reboot
~~~~{.sh}
reboot
~~~~

Kodi should start after reboot automatically. If you had settings before, the may be reset, since kodi is now running as root.

## Install Plugin
In kodi install the plugin part of the cloned repo. By triggering the plugin kodi will stop and moonlight-qt will start. Closing moonlight-qt should restart kodi.

# Remarks
All used pictures are property of NVIDIA Corporation.