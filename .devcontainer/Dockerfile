FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Install cool tools
RUN apt-get update && \
    apt-get install -y \
    tmux htop neofetch ranger fish tree jq fzf \
    btop ncdu bat git-delta lazygit cmatrix \
    python3-pip nodejs npm

# Install cloud tools
RUN pip install awscli azure-cli gcloud
RUN npm install -g @githubnext/github-copilot-cli

# Install the Matrix code rain effect
RUN git clone https://github.com/abishekvashok/cmatrix.git && \
    cd cmatrix && \
    autoreconf -i && \
    ./configure && \
    make && \
    make install
