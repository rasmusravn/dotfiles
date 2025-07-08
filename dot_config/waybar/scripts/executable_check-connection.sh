#!/bin/bash

# --- CONFIGURATION ---
# Change this to the IP address you want to monitor.
# For example, a server, a NAS, or your router.
TARGET_IP="192.168.1.1"

# --- ICONS ---
# You can change this to any icon from your Nerd Font.
# Examples: 󰤨 (LAN Connect),  (Check),  (Link)
ICON_ONLINE="󰤨"

# --- SCRIPT LOGIC ---
# We ping the target IP once, with a timeout of 1 second.
# The output of the ping command is hidden (> /dev/null 2>&1).
# We only care about the exit code ($?).
ping -c 1 -W 1 "$TARGET_IP" > /dev/null 2>&1

# Check the exit code of the ping command.
if [ $? -eq 0 ]; then
  # If ping was successful (exit code 0), print the JSON for Waybar.
  # This makes the module visible.
  echo "{\"text\":\"$ICON_ONLINE\", \"tooltip\":\"Connection to $TARGET_IP is OK\", \"class\":\"online\"}"
else
  # If ping failed, print nothing.
  # This makes the module disappear from the bar.
  echo " no connection"
fi
