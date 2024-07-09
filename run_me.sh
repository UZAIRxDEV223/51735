#!/bin/bash

# Function to print in green
green() {
    echo -e "\e[32m$1\e[0m"
}

# Function to print in blue
blue() {
    echo -e "\e[34m$1\e[0m"
}

# Greet Yaseen
green "Hi Yaseen, are you ok? (type y or n)"
read response

if [ "$response" == "y" ]; then
    green "That's good"
elif [ "$response" == "n" ]; then
    green "How are you reading this?"
fi

sleep 2

# Ask if PC crashed
green "Did your PC crash? (type y or n)"
read response

if [ "$response" == "y" ]; then
    green "How are you even reading this?"
elif [ "$response" == "n" ]; then
    green "That's good"
fi

sleep 2

# Announce running commands
blue "Now I will start running commands"

# Run update and upgrade
sudo apt update && sudo apt upgrade -y

# Install packages
sudo apt install git curl python3 nano -y

sleep 2

# Announce installing Wine
green "Now I will install wine and wine32"

# Install Wine and Wine32
sudo apt install wine wine32 -y

# Check if sudo is installed and provide password info
if command -v sudo &> /dev/null; then
    green "The password for sudo is 'kali'"
else
    sudo apt install sudo -y
fi

# Tell Yaseen to read the read_me.txt file
green "Now read read_me.txt"
nano read_me.txt
