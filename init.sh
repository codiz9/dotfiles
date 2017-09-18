#!/bin/bash

# install oh-my-zsh
echo "Install oh-my-zsh..."
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# install Vundle
echo "Install Vundle..."
rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# link dotfiles
mv ~/.vimrc ~/.vimrc.old &> /dev/null
mv ~/.zshrc ~/.zshrc.old &> /dev/null
mv ~/.tmux.conf ~/.tmux.conf.old &> /dev/null

CURDIR=$(dirname $0)
ln -s $CURDIR/vimrc $HOME/.vimrc
ln -s $CURDIR/zshrc $HOME/.zshrc
ln -s $CURDIR/tmux.conf $HOME/.tmux.conf

