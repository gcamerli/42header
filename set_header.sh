#!/bin/bash
# ./set_header.sh

# Set variables
cat >> ~/.zshrc << EOF

# 42 settings
USER=`/usr/bin/whoami`
export USER
GROUP=`/usr/bin/id -gn $user`
export GROUP
MAIL="$USER@student.42.fr"
export MAIL
EOF

mkdir -p ~/.vim/plugin

# Add stdheader to vim plugins
cp vim/stdheader.vim ~/.vim/plugin/

source ~/.zshrc
