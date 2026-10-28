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

# TODO

- mpv: configure ncmpcpp (?)
- format all config files (e.g. `waybar/config.jsonc` currently contains a mixture of tabs & spaces)
