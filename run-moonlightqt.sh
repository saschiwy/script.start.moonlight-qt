#!/bin/sh
# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2020 Sascha Schiwy

PID=$(ps aux | grep '[k]odi' | awk '{print $2}')
#kill -STOP $PID
#tail --pid=$PID -f /dev/null > /dev/null 2>&1

DISPLAY=':0'
export DISPLAY=':0'
moonlight-qt > ~/.moonligth-qt.log 2>&1
#kill -CONT $PID
