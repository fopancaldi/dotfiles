[[ $- != *i* ]] && return

shopt -s checkwinsize

export EDITOR="nvim"
export MANPAGER="nvim +Man!"
# TODO: Remove .local/bin/ and .cargo/bin/ after moving to arch
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.ghcup/bin:$HOME/matlab/bin${PATH+:$PATH}"

[[ -f /usr/share/bash-completion/bash_completion ]] && source /usr/share/bash-completion/bash_completion
[[ -f /etc/bash_completion ]] && source /etc/bash_completion

[[ -f ~/.bash_aliases ]] && source "$HOME/.bash_aliases"
eval "$(starship init bash)"
