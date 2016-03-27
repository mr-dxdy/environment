#!/usr/bin/env bash

REPOSITORY="https://raw.githubusercontent.com/mr-dxdy/environment/master"

log()  { printf "%b\n" "$*"; }

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
  log "Environment is installing"

  install_gitconfig
  install_aliases
  install_gemrc

  log "Done"
}

main_install
