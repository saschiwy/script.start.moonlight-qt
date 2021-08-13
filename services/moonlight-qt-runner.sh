#!/bin/sh
# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2020 Sascha Schiwy

systemctl stop kodi
QT_QPA_EGLFS_ALWAYS_SET_MODE=1 /usr/bin/moonlight-qt > /tmp/moonlight-qt.log 2>$
systemctl restart kodi