#!/bin/sh

set -x
if netstat -an | grep -q ':22.*ESTABLISHED'; then
  notify-send --expire-time=-1 --hint=string:int:int:'bottom_right' 'ALERTA' 'SE HA DETECTADO UN NUEVO LOGIN EN LA SSH'
fi
tee ssh-login-alert.log
echo "ALERTA NUEVO LOGIN EN LA SSH" | wall

#Codigo By : https://github.com/hibocchi/Awip_Bocchi-sh
