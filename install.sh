#!/bin/sh
DOTFILES_HOME=~/.dotfiles

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "$DOTFILES_HOME/dotfiles" ] && die "$DOTFILES_HOME/dotfiles already exists."
[ -e "~/.dotfiles" ] && die "~/.dotfiles already exists."

git clone https://github.com/derekhound/dotfiles.git "$DOTFILES_HOME"
ln -s $DOTFILES_HOME/.tmux.conf ~/.tmux.conf
