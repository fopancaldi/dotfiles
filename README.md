My dotfiles.

Tested on Arch (read: I use Arch btw).

# Prerequisites

Requires [`stow`](https://www.gnu.org/software/stow/).
The scripts require the `bash` shell.

# Usage

    cd
    git clone https://github.com/fopancaldi/dotfiles.git
    cd dotfiles
    scripts/setup.bash
    scripts/setup_su.bash

## Configure Firefox, Thunderbird

After running at least `setup_su.bash` (in order to stow the various `policies.json`):

    cp firefox/* <firefox-profile-directory>
    cp betterbird/* <betterbird-profile-directory>

where `<firefox-profile-directory>` is the directory of the Firefox profile (usually of the form `~/.mozilla/firefox/xxxxxxxx.profile_name` or `~/.config/mozilla/firefox/xxxxxxxx.profile_name`).
Betterbird is analogous, except that the directory should be `~/.thunderbird/xxxxxxxx.profile_name`.

Use `firefox -P`, `betterbird -P` to edit the profiles.

# Configured programs

- [`betterbird`](https://www.betterbird.eu/): email client
- [`dunst`](https://dunst-project.org/): notification daemon
- [`firefox`](https://www.firefox.com/): internet browser and pdf editor
- [`flameshot`](https://flameshot.org/): screenshot tool
- [`foot`](https://codeberg.org/dnkl/foot/) (+[`lsd`](https://github.com/lsd-rs/lsd/), [`starship`](https://starship.rs/)): terminal emulator
- [`fuzzel`](https://codeberg.org/dnkl/fuzzel/): app launcher
- [`gammastep`](https://gitlab.com/chinstrap/gammastep/): blue light tool
- [`greetd`](https://sr.ht/~kennylevinsen/greetd/) (+[`tuigreet`](https://github.com/apognu/tuigreet/)): login manager
- [`kanshi`](https://gitlab.freedesktop.org/emersion/kanshi/): screen placement tool
- [`keyd`](https://github.com/rvaiya/keyd/): key remapping tool
- [`helix`](https://helix-editor.com/): text editor
- [`mpd`](https://www.musicpd.org/) (+ TODO): music player
- [`mpv`](https://mpv.io/): video player
- [`neovim`](https://neovim.io/): text editor
- [`sioyek`](https://sioyek.info/): pdf reader
- [`sway`](https://swaywm.org/) (+[`swayidle`](https://github.com/swaywm/swayidle/), [`swaylock`](https://github.com/swaywm/swaylock/), [`waybar`](https://waybar.org/)): window manager
- [`swayimg`](https://github.com/artemsen/swayimg/): image viewer
- [`tealdeer`](https://tealdeer-rs.github.io/tealdeer/): shorter man
- [`yazi`](https://yazi-rs.github.io/): file manager
- [`zathura`](https://pwmt.org/projects/zathura/): pdf reader

# TODO

- kanshi: configure each output once (>= 1.5)
- swayimg: use a .lua config file (>= 5.0)
- mpv: configure ncmpcpp (?)
- format all config files (e.g. `waybar/config.jsonc` currently contains a mixture of tabs & spaces)
- kanshi: correctly align the top irnerio monitor
