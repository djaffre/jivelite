#!/bin/bash

killall jivelite
sleep 1

export DISPLAY=:0
export PATH=${PATH}:/usr/sbin
cd /home/jivelite/jivelite/bin/
./jivelite
