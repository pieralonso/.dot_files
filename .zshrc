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
PROMPT='${NEWLINE}%F{green}%T%f %F{cyan}%~%f %F{red}${vcs_info_msg_0_}%f ${NEWLINE}%F{yellow}〉%f'

# fnm
FNM_PATH="/home/pieralonso/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/pieralonso/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi
