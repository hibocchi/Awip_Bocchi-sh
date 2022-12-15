
if ! command -v netstat > /dev/null 2>&1; then
  sudo apt-get install net-tools
fi

if ! command -v notify-send > /dev/null 2>&1; then
  sudo apt-get install libnotify-bin
fi

if ! command -v tee > /dev/null 2>&1; then
  sudo apt-get install coreutils
fi

if ! command -v wall > /dev/null 2>&1; then
  sudo apt-get install bsdutils
fi

chmod +x Awip_Bocchi.sh

   nohup Awip_Bocchi.sh &

#Codigo By : https://github.com/hibocchi/Awip_Bocchi-sh
