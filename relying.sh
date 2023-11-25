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

# org-download requirements
sudo pacman -S xclip

# pdf viewer
sudo pacman -S evince

# mermaid-cli
yay -S mermaid-cli

# plantuml
sudo pacman -S plantuml 
