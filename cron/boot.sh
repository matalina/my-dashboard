#!/usr/bin/env sh

# Disable screensaver. Varies across Pi models & Raspbian versions; might be outdated.
# Google "raspberry disable suspend screensaver" for help
xset s off
xset -dpms
xset s noblank

# Move the mouse cursor out of the way!
xdotool mousemove 0 0

# Avoid "Chrome didn't shutdown correctly" notification on unclean shutdown
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' ~/.config/chromium/'Local State'
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/; s/"exit_type":"[^"]\+"/"exit_type":"Normal"/' ~/.config/chromium/Default/Preferences

# Start Chromium, in fullscreen "kiosk" mode, and disabling update notifications
chromium-browser --kiosk --check-for-update-interval=31536000 'https://dashboard.aliciawilkerson.com'
