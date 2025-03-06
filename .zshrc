# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100
setopt notify
unsetopt autocd
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pieralonso/.zshrc'
export PATH="$PATH:/opt/nvim/"
alias ls='ls --color=auto'
export LS_COLORS="di=36:fi=37"

autoload -Uz compinit
compinit
# End of lines added by compinstall
echo 
echo Mide dos veces, corta una

autoload -Uz vcs_info
precmd() { vcs_info }
alias vi="nvim"
zstyle ':vcs_info:git:*' formats '⋌ %b '

setopt PROMPT_SUBST
NEWLINE=$'\n'
PROMPT='%F{green}%T%f %F{cyan}%~%f %F{red}${vcs_info_msg_0_}%f ${NEWLINE}%F{yellow}⤷ %f'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

