#!/bin/bash

scripts/common/assert_on_linux.bash

initial_dir="$(pwd | tr -d '\r')"
cd "${HOME}/dotfiles" || exit $?

for file in "greetd/config.toml" "keyd/default.conf"; do
  target="/etc/${file}"
  file="${HOME}/dotfiles/${file}"

  echo "Backing up $target"
  sudo -k scripts/common/smart_mv_bak.bash "$target"

  echo "Linking $file to $target"
  sudo -k ln -s "$file" "$target"
done
unset file

cd "$initial_dir" || exit $?
exit
