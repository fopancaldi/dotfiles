#!/bin/bash

INITIAL_DIR="$(pwd | tr -d '\r')"
cd "${HOME}/dotfiles/not_stowed" || exit $?

scripts/make_dirs.sh
stow ..

cd "${INITIAL_DIR}" || exit $?

scripts/install_agave.sh
scripts/add_aliases.sh

exit
