#!/bin/bash

# Show awesome MatrixVogue banner
echo " "
echo "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄"
echo "█ MatrixVogue Cloud Computer v1.0 ██████████████████"
echo "▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀"
echo " "

# Set up personal settings
git clone https://github.com/<HexVortex000>/dotfiles.git ~/dotfiles
rsync -a ~/dotfiles/ ~/

# Make the terminal look cool
chsh -s $(which fish)
echo "neofetch" >> ~/.bashrc
echo "alias matrixvogue='cmatrix -s -C cyan'" >> ~/.bashrc
echo "function sysinfo { echo \"⚡ \$(nproc) cores | 🧠 \$(free -h | awk '/Mem/{print \$3}/\$2')\"; }" >> ~/.bashrc

# Start background services
sudo service postgresql start
redis-server --daemonize yes

# Start the Matrix code effect automatically
tmux new-session -d -s matrixvogue
tmux send-keys -t matrixvogue:0 'sysinfo' C-m
tmux send-keys -t matrixvogue:0 'cmatrix -s -C cyan' C-m
