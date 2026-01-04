[[ $- != *i* ]] && return

shopt -s checkwinsize
export PATH="$HOME/.cargo/bin:$PATH"

[[ -f ~/.bash_aliases ]] && source "${HOME}/.bash_aliases"
eval "$(starship init bash)"
