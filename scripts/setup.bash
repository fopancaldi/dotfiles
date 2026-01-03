#!/bin/bash

scripts/common/assert_on_linux.bash

initial_dir="$(pwd | tr -d '\r')"
cd "${HOME}/dotfiles" || exit $?

for file in ".bashrc" ".bash_profile" ".bash_logout"; do
 scripts/common/smart_mv_bak.bash "${HOME}/${file}"
done
unset file

scripts/nosu/make_dirs.bash
stow stow

cd "$initial_dir" || exit $?
exit
