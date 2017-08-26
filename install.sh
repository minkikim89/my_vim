#!/bin/sh

if [ -e ~/.vimrc -o -e ~/.vim ]; then
    echo "already exists.."
    exit
fi

#bundle install
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vi -c :BundleInstall -c :qa
