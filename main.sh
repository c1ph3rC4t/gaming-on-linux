#!/bin/bash

curl -s "https://api.github.com/repos/c1ph3rc4t/gaming-on-linux/contents/scripts" | grep '"name":.*\.sh"' | cut -d'"' -f4 | nl

read -p "Enter number: " CHOICE </dev/tty

SCRIPT=$(curl -s "https://api.github.com/repos/c1ph3rc4t/gaming-on-linux/contents/scripts" | grep '"name":.*\.sh"' | cut -d'"' -f4 | sed -n "${CHOICE}p")

curl -fsSL "https://c1ph3rc4t.github.io/gaming-on-linux/scripts/$SCRIPT" | sh
