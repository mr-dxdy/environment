#!/usr/bin/env bash

REPOSITORY="https://raw.githubusercontent.com/mr-dxdy/environment/master"

install_gitconfig()
{
  curl "$REPOSITORY/.gitconfig" > ~/.gitconfig
}

install_aliases()
{ 
  curl "$REPOSITORY/.bash_aliases" > ~/.bash_aliases
}

install_gemrc()
{
  curl "$REPOSITORY/.gemrc" > ~/.gemrc
}

main_install()
{
  install_gitconfig
  install_aliases
  install_gemrc
}

main_install
