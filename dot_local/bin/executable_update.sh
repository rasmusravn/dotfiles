#!/bin/bash
# Personal update script

set -e

if command -v apt-get >/dev/null 2>&1; then
    sudo apt-get update && sudo apt-get upgrade -y
elif command -v dnf >/dev/null 2>&1; then
    sudo dnf upgrade --refresh -y
elif command -v pacman >/dev/null 2>&1; then
    sudo pacman -Syu --noconfirm
else
    echo "No supported package manager found." >&2
    exit 1
fi
