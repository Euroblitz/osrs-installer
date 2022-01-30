#!/bin/bash
cd "$(xdg-user-dir HOME)"
mkdir -p .jagex_cache_32
mkdir -p .jagex_cache_32/runescape
mkdir -p .jagex
mkdir -p .jagex/runescape
mkdir -p .jagex/runescape/bin
mkdir -p .jagex/runescape/images

cd .jagex/runescape/bin
wget https://github.com/Euroblitz/osrs-installer/blob/main/jagexappletviewer.jar

cd && cd .jagex/runescape/images
wget https://github.com/Euroblitz/osrs-installer/raw/main/jagexappletviewer.png

cd "$(xdg-user-dir DESKTOP)"
