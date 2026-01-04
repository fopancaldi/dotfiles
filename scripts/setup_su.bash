#!/bin/bash

scripts/common/assert_on_linux.bash

shopt -s globstar

initial_dir="$(pwd | tr -d '\r')"
cd "${HOME}/dotfiles" || exit $?

for file in etc/**; do
  [[ ! -f "$file" ]] && continue
  file="/${file}"
  dir="$(dirname "$file")/"

  echo "Creating $dir"
  sudo -k mkdir -p "$dir"

  echo "Backing up $file"
  sudo -k scripts/common/smart_mv_bak.bash "$file"
done
unset -v file dir

echo "Stowing etc"
sudo -k stow --target /etc etc

cd "$initial_dir" || exit $?
exit
