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

install_vimrc()
{
  curl "$REPOSITORY/.vimrc" > ~/.vimrc
}

install_tmux_conf() {
  curl "$REPOSITORY/.tmux.conf" > ~/.tmux.conf
}

main_install()
{
  log "Environment is installing"

  install_gitconfig
  install_aliases
  install_gemrc
  install_vimrc
  install_tmux_conf

  log "Done"
}

main_install
