[[ $- != *i* ]] && return

shopt -s checkwinsize
# TODO: Remove .local/bin/ after moving to arch
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"

[[ -f ~/.bash_aliases ]] && source "${HOME}/.bash_aliases"
eval "$(starship init bash)"
