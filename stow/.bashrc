[[ $- != *i* ]] && return

shopt -s checkwinsize

source "${HOME}/dotfiles/aliases.bash"
eval "$(starship init bash)"
