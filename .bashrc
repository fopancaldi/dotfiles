[[ $- != *i* ]] && return

source "${HOME}/dotfiles/not_stowed/aliases.bash"
eval "$(starship init bash)"
