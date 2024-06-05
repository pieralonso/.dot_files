echo 
echo Mide dos veces, corta una

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
NEWLINE=$'\n'
PROMPT='${NEWLINE}%F{green}%T%f %F{yellow}%~%f %F{red}${vcs_info_msg_0_}%f ${NEWLINE}%F{cyan}→%f '
