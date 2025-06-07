#!/bin/bash

# Educational Ransomware Simulator
# Author: D3C0D3D 191
# For learning and awareness only – No real file encryption.

clear

# Cool Skull ASCII Art (visible on all screens)
echo -e "\e[36m"
cat << "EOF"
       ▄███████████▄
     ████▀▀▀███▀▀▀████
    ███▀    ███    ▀███
   ███      ███      ███
   ███      ███      ███
   ███    ▄████▄    ███
    ███  ████████  ███
     ███▄████████▄███
       ▀███████████▀
           ▀▀▀▀▀
EOF
echo -e "\e[0m"

# Title & Author
echo -e "\e[35m☠️  RANSOMWARE SIMULATOR ☠️\e[0m"
echo -e "\e[33mAuthor: D3C0D3D 191 (For Educational Use Only)\e[0m"
echo -e "\e[36mMade by D3C0D3D 191\e[0m"

# Legal Warning
echo -e "\e[31m"
echo "------------------------------------------------------------"
echo "WARNING: This script is for educational use only."
echo "Do not use it for illegal or malicious purposes."
echo "The author is not responsible for any misuse."
echo "------------------------------------------------------------"
echo -e "\e[0m"

# User Inputs
echo -e "\e[36mEnter modification details:\e[0m"
read -p "Enter app name: " appname
read -p "Enter logo path (just for display): " logo
read -p "Enter headline: " headline
read -p "Enter description: " description

# Set Password (hidden input, cross-platform method)
echo -n "Set unlock password: "
stty -echo
read password
stty echo
echo ""

# Fake Lock Screen
clear
echo -e "\e[31m"
echo "☠️☠️☠️  YOUR DEVICE IS LOCKED BY $appname  ☠️☠️☠️"
echo -e "\e[0m"
echo -e "\e[36mHeadline: $headline"
echo "Description: $description"
echo "Logo: $logo"
echo -e "\e[33m\nAll files are safe but locked. To unlock, enter password.\e[0m"

# Unlock loop
while true; do
    echo -n "Enter unlock password: "
    stty -echo
    read entered
    stty echo
    echo ""
    if [[ "$entered" == "$password" ]]; then
        echo -e "\e[32m✔️ Access granted. Device unlocked.\e[0m"
        echo -e "\e[36mThank you for using this tool.\e[0m"
        echo -e "\e[33mMade by D3C0D3D 191\e[0m"
        break
    else
        echo -e "\e[31m❌ Incorrect password. Try again.\e[0m"
    fi
done
