#!/bin/bash

# MatrixVogue banner
echo -e "\e[36m" # Cyan color
echo "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄"
echo "█ MatrixVogue Cloud Computer v1.0 ██████████████████"
echo "▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀"
echo -e "\e[0m" # Reset color

# Install essentials
sudo apt update
sudo apt install -y tmux cmatrix neofetch

# Start Matrix effect
tmux new-session -d -s matrixvogue
tmux send-keys -t matrixvogue:0 'cmatrix -s -C cyan' C-m
