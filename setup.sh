#!/bin/bash

# ======
# This file generates the symbolic links so the dotfiles do not need to be
# manually transferred
# ======

# Go to the home dir
cd ~

# Move existing bashrc if it exists. The other files usually do not exist
if [ ! -f .bashrc ]; then
   mv .bashrc .bashrc.old
fi

# Make .vim directory for link if it doesn't exist
if [ ! -d .vim ]; then
    mkdir .vim/
fi


# Link everything
ln -s dev/dotfiles/.tmux.conf .tmux.conf
ln -s dev/dotfiles/.bashrc .bashrc
ln -s dev/dotfiles/.vimrc .vimrc
ln -s dev/dotfiles/.vim/ .vim/

echo 'Done linking';
