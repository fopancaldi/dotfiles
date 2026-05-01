#!/bin/bash

scripts/common/assert_on_linux.bash

initial_dir="$(pwd | tr -d '\r')"
cd "$HOME/dotfiles" || exit $?

for file in .bashrc .bash_profile .bash_logout .bash_aliases; do
    scripts/common/smart_mv_bak.bash "$HOME/$file"
done
unset -v file

mkdir -p "$HOME/Pictures/Wallpapers"
stow --target "$HOME" tilde

cd "$initial_dir" || exit $?
exit
