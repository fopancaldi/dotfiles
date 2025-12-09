#!/bin/bash

scripts/install_agave.sh
scripts/add_aliases.sh

exit

# TODO: Remove this stuff

echo "echoed from setup.sh"

last_brc_line=$(tail -1 "${HOME}"/.bashrc)
echo "last line: ${last_brc_line}"

a=$(grep "source \"\${HOME}/dotfiles/NotStowed/aliases.sh\"" ~/.bashrc)
echo "${a}"

if [ "${a}" != "" ]; then
echo "should not do anything"
fi

var=""
if [ -z "${var}" ]; then
echo "shirou"
fi
