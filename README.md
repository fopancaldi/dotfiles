My dotfiles.

# Prerequisites

Requires [`stow`](https://www.gnu.org/software/stow).
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

- [`flameshot`](https://flameshot.org): screenshot tool
- [`foot`](https://codeberg.org/dnkl/foot): terminal emulator
- [`fuzzel`](https://codeberg.org/dnkl/fuzzel): app launcher
- [`gammastep`](https://gitlab.com/chinstrap/gammastep): night shift tool
- [`greetd`](https://sr.ht/~kennylevinsen/greetd): login manager
- [`keyd`](https://github.com/rvaiya/keyd): key remapper
- [`helix`](https://helix-editor.com): text editor
- [`mpv`](https://mpv.io/): video player
- [`neovim`](https://github.com/neovim/neovim): text editor
- [`sioyek`](https://sioyek.info): pdf reader
- [`sway`](https://github.com/swaywm/sway): window manager
- [`tealdeer`](https://tealdeer-rs.github.io/tealdeer/): shorter man
- [`waybar`](https://github.com/Alexays/Waybar): top bar provider
- [`yazi`](https://yazi-rs.github.io/): file manager
- [`zathura`](https://pwmt.org/projects/zathura): pdf reader
