#bin/bash

OS_FAMILY='REDHAT'
if [ -f /etc/debian_version ]; then
  OS_FAMILY='DEBIAN'
fi

GIT=`which git`
if [[ "x$GIT" == "x" ]]; then
  # install git
  if [[ "$OS_FAMILY" == 'REDHAT' ]]; then
    sudo yum install -y git
  else
    sudo apt-get install -y git-core
  fi
fi

VIM=`which vim`
if [[ "x$VIM" == "x" ]]; then
  # install vim
  if [[ "$OS_FAMILY" == 'REDHAT' ]]; then
    sudo yum install -y vim
  else
    sudo apt-get install -y vim
  fi
fi

# Install Vundle
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Set up Vim
git clone https://github.com/uprush/myvim/blob/master/vimrc ~/.vimrc

# Install Vim plugins
vim +PluginInstall +qall
