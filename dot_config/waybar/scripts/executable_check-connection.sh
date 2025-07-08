#!/bin/bash

# --- CONFIGURATION ---
# Change this to the IP address you want to monitor.
# Make sure you can successfully `ping` this IP from your terminal.
TARGET_IP="192.168.1.1"

# --- ICONS & TEXT ---
ICON_ONLINE="󰌘 "  # Icon for when connection is OK (e.g., LAN connect)
ICON_OFFLINE=" " # Icon for when connection is down (e.g., LAN disconnect)

# --- SCRIPT LOGIC ---
# We ping the target IP once, with a timeout of 1 second.
ping -c 1 -W 1 "$TARGET_IP" > /dev/null 2>&1

# Check the exit code of the ping command.
if [ $? -eq 0 ]; then
  # If ping was successful, print the JSON for the ONLINE state.
  echo "{\"text\":\"$ICON_ONLINE\", \"tooltip\":\"Connection to $TARGET_IP is OK\", \"class\":\"online\"}"
else
  # If ping failed, print the JSON for the OFFLINE state.
  echo "{\"text\":\"$ICON_OFFLINE\", \"tooltip\":\"Connection to $TARGET_IP is down\", \"class\":\"offline\"}"
fi
