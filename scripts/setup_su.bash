#!/bin/bash

scripts/common/assert_on_linux.bash

shopt -s globstar

initial_dir="$(pwd | tr --delete '\r')"
cd "$HOME/dotfiles" || exit $?

for dir in etc opt usr; do
    for file in "$dir"/**; do
        [[ ! -f "$file" ]] && continue
        file="/$file"
        parent_dir="$(dirname "$file")/"

        echo "Creating $parent_dir"
        sudo --reset-timestamp mkdir --parents "$parent_dir"

        echo "Backing up $file"
        sudo --reset-timestamp scripts/common/smart_mv_bak.bash "$file"
    done

    echo "Stowing $dir to /$dir"
    sudo --reset-timestamp stow --target "/$dir" "$dir"
done
unset -v file parent_dir dir

cd "$initial_dir" || exit $?
exit
