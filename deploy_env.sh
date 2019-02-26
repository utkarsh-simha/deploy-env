#!/bin/bash

# Setup oh-my-zsh
sh -c "$PWD/install_zsh.sh"
cp $PWD/.zshrc $HOME/.zshrc

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Set up vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp $PWD/.vimrc $HOME/.vimrc
mkdir $HOME/.vim/colors
cp $PWD/monokain.vim $HOME/.vim/colors/monokain.vim
vim +BundleInstall +qall
