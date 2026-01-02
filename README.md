My dotfiles.

# Prerequisites

Requires [`stow`](https://www.gnu.org/software/stow/).
The scripts require the `bash` shell.

# Usage

    cd
    git clone git@github.com:fopancaldi/dotfiles.git
    cd dotfiles
    stow .
    chmod u+x not_stowed/setup.sh not_stowed/setup_sudo.sh not_stowed/scripts/*.sh
    not_stowed/setup.sh
    not_stowed/setup_sudo.sh

# Configured programs

- [`flameshot`](https://flameshot.org/): screenshot tool
- [`foot`](https://codeberg.org/dnkl/foot/): terminal emulator
- [`fuzzel`](https://codeberg.org/dnkl/fuzzel/): app launcher
- [`gammastep`](https://gitlab.com/chinstrap/gammastep/): blue light reduction tool
- [`greetd`](https://sr.ht/~kennylevinsen/greetd/) (+ [`tuigreet`](https://github.com/apognu/tuigreet/)): login manager
- [`keyd`](https://github.com/rvaiya/keyd/): key remapping tool
- [`helix`](https://helix-editor.com/): text editor
- [`mpv`](https://mpv.io/): video player
- [`neovim`](https://neovim.io/): text editor
- [`sioyek`](https://sioyek.info/): pdf reader
- [`starship`](https://starship.rs/): terminal prompt
- [`sway`](https://swaywm.org/) (+ [`swaylock`](https://github.com/swaywm/swaylock/), [`waybar`](https://waybar.org/)): window manager
- [`swayimg`](https://github.com/artemsen/swayimg/): image viewer
- [`tealdeer`](https://tealdeer-rs.github.io/tealdeer/): shorter man
- [`yazi`](https://yazi-rs.github.io/): file manager
- [`zathura`](https://pwmt.org/projects/zathura/): pdf reader

TODO: Add `stow` directory, remove `not_stowed` and `.stow-local-ignore`
TODO: Make the scripts `.bash`, or change the shebang to `#!/bin/sh`
TODO: Split `.config/sway/config` into multiple files
