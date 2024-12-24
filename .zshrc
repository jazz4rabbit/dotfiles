export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ll="ls -alG"

## Zsh Segments codes.
# %F => color dict# %f => reset color
# %~ => current path
# %* => time
# %n => username
# %m => shortname host
# %(?..) => prompt conditional - %(condition.true.false)
#
# bash color [https://gist.github.com/vratiu/9780109]
export PS1=$'\033[32m%n@\033[0m:\033[34;1m%~\033[0m\$ '

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
#PROMPT='%F{green}%n@%f:%B%F{blue}%~%f%b %B%F{green}${vcs_info_msg_0_}%f%b$ '
PROMPT='%F{green}%n@🍏%f:%B%F{blue}%~%f%b %B%F{green}${vcs_info_msg_0_}%f%b$ '

