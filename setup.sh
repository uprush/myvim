#bin/bash

BASE=$HOME
cd $BASE

# Install Powerline fonts
git clone https://github.com/powerline/fonts.git
cd fonts && ./install.sh

# Backup original vim config
mkdir $BASE/backup
mv ~/.vimrc $BASE/backup/
mv ~/.vim $BASE/backup

# Download main Vim config
git clone https://github.com/uprush/myvim.git
mv myvim/vimrc $BASE/.vimrc
mv myvim/vim $BASE/.vim

# Install vim-plug
curl -fLo $BASE/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Vim plugins
# This equals to :PlugInstall in Vim
vim +PlugInstall +qall

