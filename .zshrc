# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100
setopt notify
unsetopt autocd
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pieralonso/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
echo
echo Mide dos veces, corta una

autoload -Uz vcs_info
precmd() { vcs_info }
alias v="vim"
zstyle ':vcs_info:git:*' formats '⋌ %b '

setopt PROMPT_SUBST
NEWLINE=$'\n'
PROMPT='${NEWLINE}%F{green}%T%f %F{yellow}%~%f %F{red}${vcs_info_msg_0_}%f ${NEWLINE}%F{cyan}〉%f'
