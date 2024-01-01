# Set up

[Reference](https://unito.io/blog/better-raspberry-pi-dashboards/)

## Cron

→ Declare two cron scheduler jobs to perform start/end of day tasks (e.g. 7AM – 7PM, Monday to Friday). Launch `crontab -e` , and add:
```
0   19  *   *   1-5 /home/pi/evening.sh

0   7   *   *   1-5 /home/pi/morning.sh
```

→ Declare a startup script: `sudo nano /etc/xdg/lxsession/LXDE-pi/autostart` and add at the end:
```
@/home/pi/boot.sh
```
