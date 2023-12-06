#!/bin/bash

# lsp-bridge requirements
sudo pacman -S python-orjson python-six python-setuptools python-paramiko python-rapidfuzz
yay -S python-epc python-setuptools
# bash lsp-server
sudo pacman -S bash-language-server
# latex lsp-server
sudo pacman -S texlab
# python lsp-server
sudo pacman -S pyright
# typst lsp
yay -S typst-lsp-bin

# org-download requirements
sudo pacman -S xclip

# pdf viewer
sudo pacman -S evince

# mermaid-cli
yay -S mermaid-cli

# plantuml
sudo pacman -S plantuml 

# Detect the terminal type
if [ -n "$ZSH_VERSION" ]; then
    # User is using Zsh
    RC_FILE="$HOME/.zshrc"
    echo "Zsh user detected"
elif [ -n "$BASH_VERSION" ]; then
    # User is using Bash
    RC_FILE="$HOME/.bashrc"
    echo "Bash user detected"
else
    echo "Unknown terminal type, script cannot run."
    exit 1
fi

# Append configuration content to the end of the configuration file
cat <<EOL >> "$RC_FILE"
# Set proxy server address and port
PROXY_SERVER="127.0.0.1"
PROXY_PORT="7890"

# Enable proxy
enable_proxy() {
  export http_proxy="http://$PROXY_SERVER:$PROXY_PORT"
  export https_proxy="http://$PROXY_SERVER:$PROXY_PORT"
  export all_proxy="socks5://$PROXY_SERVER:$PROXY_PORT"
  echo "Proxy has been enabled, address: $http_proxy"
}

# Disable proxy
disable_proxy() {
  unset http_proxy
  unset https_proxy
  unset all_proxy
  echo "Proxy has been disabled"
}

# Set aliases to simplify commands
alias proxyon="enable_proxy"
alias proxyoff="disable_proxy"

# kill emacs server
alias killemacs='emacsclient --eval "(kill-emacs)" '

# Added configuration information
alias god="emacsclient -c"

# Execute the emacsclient command to get the server name
server_name=$(emacsclient --eval "(message server-name)" 2>&1)

# Compare the character length of server_name with 8
if [ "${#server_name}" -eq 8 ]; then
    echo "Emacs daemon is already running."
else
    echo "Emacs daemon is not running, starting..."
    emacs --daemon
    echo "Emacs daemon started successfully!"
fi
EOL

echo "Configuration has been successfully added to $RC_FILE"
