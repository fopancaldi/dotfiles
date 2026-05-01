#!/bin/bash

scripts/common/assert_on_linux.bash

shopt -s globstar

initial_dir="$(pwd | tr -d '\r')"
cd "$HOME/dotfiles" || exit $?

for dir in etc opt usr; do
  for file in "$dir"/**; do
    [[ ! -f "$file" ]] && continue
    file="/$file"
    parent_dir="$(dirname "$file")/"

    echo "Creating $parent_dir"
    sudo -k mkdir -p "$parent_dir"

    echo "Backing up $file"
    sudo -k scripts/common/smart_mv_bak.bash "$file"
  done

  echo "Stowing $dir to /$dir"
  sudo -k stow --target "/$dir" "$dir"
done
unset -v file parent_dir dir

cd "$initial_dir" || exit $?
exit
