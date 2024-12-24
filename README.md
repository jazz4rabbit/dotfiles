# dotfiles
ios for dotfiles

## Install brew
https://brew.sh

## Install iTerm2
```sh
brew install iterm2
```

## Download iTerm2 Theme
https://iterm2colorschemes.com
- Github, Github light

## Download fonts
1. Hack Nerd Font Mono  
  https://www.nerdfonts.com
2. D2Coding  
  https://github.com/naver/d2codingfont

## cat .zshrc
```sh
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
```

## Install vim
1. install vim  
```zsh
brew install vim
```

2. install `vim-plug`  
  https://github.com/junegunn/vim-plug

3. theme  
  https://vimcolorschemes.com/morhetz/gruvbox  
  https://github.com/morhetz/gruvbox

4. airline  
  https://github.com/vim-airline/vim-airline  
  https://github.com/vim-airline/vim-airline-themes

## VScode
settings.json
```json
{
    // Text Editor
    "editor.fontFamily": "Hack Nerd Font Mono, D2Coding, monospace",
    "editor.fontSize": 16,
    "editor.renderWhitespace": "boundary",
    "editor.rulers": [
        80,
        120
    ],

    "editor.tabSize": 2,
    "workbench.colorTheme": "GitHub Dark",
}
```