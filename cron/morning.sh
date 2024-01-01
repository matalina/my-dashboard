#!/usr/bin/env sh

# A daily upgrade is good hygiene. Yes it's safe, Raspbian sits on top of Debian,
# which is very conservative / stable. Your Pi will *not* be toasted by an upgrade.
sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean

# A daily restart mitigates browser memory leaks, and forces the screen to turn on
sudo reboot now
