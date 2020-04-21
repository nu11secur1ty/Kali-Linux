#!/usr/bin/bash
timeout 10 killall -q conky
sleep 15
conky &
