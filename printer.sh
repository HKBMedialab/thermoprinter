#!/bin/zsh

lpadmin -p GD32 -v usb://GD32%20Microelectronics/POS58%20USB%20Printer?serial=Printer -P ZJ-58.ppd
cupsaccept GD32
cupsenable GD32
lp -d GD32 $1
sleep 3
lpadmin -x GD32