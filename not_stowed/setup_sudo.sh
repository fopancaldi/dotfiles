#!/bin/bash

TODO: "sudo mv" only if backup does not exist already

echo "This script is TODO"
exit

sudo mv /etc/greetd/config.toml /etc/greetd/config.toml.bak
sudo ln -s ~/dotfiles/not_stowed/greetd/config.toml /etc/greetd/config.toml

sudo mv /etc/keyd/default.conf /etc/keyd/default.conf.bak
sudo ln -s ~/dotfiles/not_stowed/keyd/default.conf /etc/keyd/default.conf
