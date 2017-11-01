#!/bin/sh

if [ -e ~/.vimrc -o -e ~/.vim ]; then
    echo "already exists.."
    exit
fi

sudo yum install ctags
sudo yum install cscope

#bundle install
ln -s ~/my_vim/vimrc ~/.vimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vi -c :BundleInstall -c :qa

mkdir ~/.vim/plugin
cp ./cscope_maps.vim ~/.vim/plugin

sudo cp ./mkcscope.sh /bin/
