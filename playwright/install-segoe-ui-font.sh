#!/bin/bash
# Colours Variables
GREEN='\033[00;32m'
LBLUE='\033[01;34m'

# from https://github.com/mrbvrz/segoe-ui-linux/blob/master/install.sh
# font geht ned

DEST_DIR="/usr/share/fonts/Microsoft/TrueType/Segoe UI/"

function wgetinstall(){
    sleep 1
    sudo apt update > /dev/null 2>&1
    sudo apt install -y wget > /dev/null 2>&1
}

function fontinstall(){
    mkdir -p "$DEST_DIR"
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/segoeui.ttf?raw=true -O "$DEST_DIR"/segoeui.ttf > /dev/null 2>&1 # regular
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/segoeuib.ttf?raw=true -O "$DEST_DIR"/segoeuib.ttf > /dev/null 2>&1 # bold
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/segoeuii.ttf?raw=true -O "$DEST_DIR"/segoeuii.ttf > /dev/null 2>&1 # italic
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/segoeuiz.ttf?raw=true -O "$DEST_DIR"/segoeuiz.ttf > /dev/null 2>&1 # bold italic
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/segoeuil.ttf?raw=true -O "$DEST_DIR"/segoeuil.ttf > /dev/null 2>&1 # light
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/seguili.ttf?raw=true -O "$DEST_DIR"/seguili.ttf > /dev/null 2>&1 # light italic
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/segoeuisl.ttf?raw=true -O "$DEST_DIR"/segoeuisl.ttf > /dev/null 2>&1 # semilight
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/seguisli.ttf?raw=true -O "$DEST_DIR"/seguisli.ttf > /dev/null 2>&1 # semilight italic
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/seguisb.ttf?raw=true -O "$DEST_DIR"/seguisb.ttf > /dev/null 2>&1 # semibold
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/seguisbi.ttf?raw=true -O "$DEST_DIR"/seguisbi.ttf > /dev/null 2>&1 # semibold italic
    # extended fontpack 2023 spudgunman fork
    wget -q https://github.com/spudgunman/segoe-ui/raw/master/font/seguibl.ttf?raw=true -O "$DEST_DIR"/seguibl.ttf > /dev/null 2>&1 # bold light
    wget -q https://github.comspudgunman/segoe-ui/raw/master/font/seguibli.ttf?raw=true -O "$DEST_DIR"/seguibli.ttf > /dev/null 2>&1 # bold light italic
    wget -q https://github.comspudgunman/segoe-ui/raw/master/font/seguiemj.ttf?raw=true -O "$DEST_DIR"/seguiemj.ttf > /dev/null 2>&1 # emoji
    wget -q https://github.comspudgunman/segoe-ui/raw/master/font/seguisym.ttf?raw=true -O "$DEST_DIR"/seguisym.ttf > /dev/null 2>&1 # symbol
    wget -q https://github.comspudgunman/segoe-ui/raw/master/font/seguihis.ttf?raw=true -O "$DEST_DIR"/seguihis.ttf > /dev/null 2>&1 # historic
    fc-cache --force --verbose
    echo -e "$GREEN\n Font installed on $LBLUE'$DEST_DIR'"
}

wgetinstall
fontinstall