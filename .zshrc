# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=1000
setopt autocd nomatch
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tare/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' menu select
compinit
# End of lines added by compinstall

# Loading in prompt themes
#autoload -Uz promptinit
#promptinit

# Turn on command not found hook(searches repos when command 404)
source /usr/share/doc/pkgfile/command-not-found.zsh

# Turn on Fish like highlight
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# PowerkLevel9k
powerline-daemon -q
. /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

# Antigen
source /usr/share/zsh/share/antigen.zsh
antigen theme KuoE0/oh-my-zsh-solarized-powerline-theme solarized-powerline

ZSH_POWERLINE_SHOW_TIME=true
ZSH_POWERLINE_SHOW_OS=false


# Tell Antigen that you're done.
antigen apply


export EDITOR=vim
export BROWSER=firefox

# rebind buttons because zsh doesnt read /etc/inputrc
# just start cat, and press the button you want
# urxvt
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[Oc" forward-word
bindkey "^[Od" backward-word
# st
bindkey "^[[H" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[P" delete-char
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

alias ls='ls --color=auto'
alias SS='sudo systemctl'
alias sp='sudo pacman'
alias pacs='pacman -Ss'
alias sv='sudo vim'
alias v='vim'
alias fclip='xclip -sel clip <'

