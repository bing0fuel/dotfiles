#!/bin/bash

# ======
# This file generates the symbolic links so the dotfiles do not need to be
# manually transferred
# ======

cd ~
ln -s dev/dotfiles/.tmux.conf .tmux.conf
ln -s dev/dotfiles/.bashrc .bashrc
ln -s dev/dotfiles/.vimrc .vimrc
ln -s dev/dotfiles/.vim/ .vim/

print 'Done linking';
