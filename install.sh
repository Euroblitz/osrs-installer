#!/bin/bash
cd
mkdir -p .jagex_cache_32/runescape .jagex/runescape/{bin,icons}

cd .jagex/runescape/bin
wget https://github.com/Euroblitz/osrs-installer/blob/main/jagexappletviewer.jar
cd ../icons
wget https://github.com/Euroblitz/osrs-installer/raw/main/jagexappletviewer.png

cd "$(xdg-user-dir DESKTOP)"
read -p "Create a desktop shortcut? (y/n)? " choice
case "$choice" in
  y|Y ) wget https://github.com/Euroblitz/osrs-installer/raw/main/osrs.desktop && \
        chmod +x osrs.desktop;;
esac

read -p "Create an application menu shortcut (y/n)? " choice
case "$choice" in 
  y|Y ) cd ${XDG_DATA_DIR:-$HOME/.local/share}/applications && \
        wget https://github.com/Euroblitz/osrs-installer/raw/main/osrs.desktop && \
        chmod +x osrs.desktop;;
esac
