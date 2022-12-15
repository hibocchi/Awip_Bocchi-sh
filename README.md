# Awip_Bocchi-sh
Si se ha conectado un dispositivo al servidor SSH puerto 22 de la maquina linux. Si se ha conectado un dispositivo, se muestra una notificación en la pantalla




                            




    Instalación     chmod +x Launcher-Awip-Bocchi.sh     










###########################


Este código se utiliza para enviar una notificación y un mensaje de alerta a todos los usuarios conectados en el sistema cuando se detecta una conexión SSH entrante en el puerto 22. La opción -x indica que se habilita el modo de depuración para mostrar cada línea del script mientras se ejecuta. La línea ''' if netstat -an | grep -q ':22.*ESTABLISHED'; then ''' comprueba si hay alguna conexión SSH activa en el puerto 22 utilizando el comando netstat y grep. Si se detecta una conexión activa, se ejecuta la línea '''' notify-send --expire-time=-1 --hint=string:int:int:'bottom_right' 'ALERTA' 'SE HA DETECTADO UN NUEVO LOGIN EN LA SSH' ''' que muestra una notificación en la pantalla del usuario con el mensaje "ALERTA: SE HA DETECTADO UN NUEVO LOGIN EN LA SSH". La línea ''' tee ssh-login-alert.log ''' escribe un mensaje en el archivo "ssh-login-alert.log" y también lo muestra en la salida estándar. Finalmente, la línea ''' echo "ALERTA NUEVO LOGIN EN LA SSH" | wall '''  envía un mensaje a todos los usuarios conectados en el sistema usando el comando wall.



####################################


La finalidad de este script es alertar a los usuarios del sistema sobre el inicio de una sesión SSH entrante, que podría ser un intento de acceso no autorizado. Esta información puede ser útil para ayudar a los usuarios a detectar posibles intentos de acceso no autorizado y tomar medidas para protegerse. También puede ayudar a detectar posibles problemas de seguridad en el sistema.

###########################

Explicación by ChatGPT
