#!/usr/bin/env sh

# Shutdown screen, to save the planet
DISPLAY=:0 xset dpms force off

# Don't consume dashboard resources off office hours, to save the planet
pkill chromium
