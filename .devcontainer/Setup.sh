#!/bin/bash

# MatrixVogue startup
echo -e "\e[32m" # Green color
echo "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄"
echo "█ MatrixVogue Cloud Computer v1.0 ██████████████████"
echo "▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀"
echo -e "\e[0m" # Reset color

# Install essential tools
sudo apt update
sudo apt install -y tmux cmatrix neofetch python3-pip

# Start Matrix effect in tmux
tmux new-session -d -s matrixvogue
tmux send-keys -t matrixvogue:0 'cmatrix -s -C green' C-m

# Keep this script running
tail -f /dev/null
