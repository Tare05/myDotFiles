# Luke's config for the Zoomer Shell

# Enable colors and change prompt:
autoload -U colors && colors
#PS1="%B%{$fg[cyan]%}[%{$fg[cyan]%}%n%{$fg[cyan]%}@%{$fg[cyan]%}%M %{$fg[yellow]%}%~%{$fg[cyan]%}]%{$reset_color%}$%b "
PS1="%B%{$fg[yellow]%}[%{$fg[yellow]%}%n%{$fg[yellow]%}@%{$fg[yellow]%}%M %{$fg[cyan]%}%~%{$fg[yellow]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
# Maybe this is not used after all
bindkey -v '^R' history-incremental-search-backward

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

export EDITOR=vim
export BROWSER=firefox
export PATH=$PATH:/home/tare/.local/bin:/opt/android-sdk/build-tools/28.0.3

# Why cant you just read inputrc you stupid
#bindkey '^H' backward-kill-word 
bindkey '^[[3~' delete-char
bindkey '^[[1~' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

alias ls='ls --color=auto'
alias SS='sudo systemctl'
alias sp='sudo pacman'
alias pacs='pacman -Ss'
alias sv='sudo vim'
alias v='vim'
alias fclip='xclip -sel clip <'

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'


# This is for urxvt Shift selection (Not workin)
#export WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
#bindkey ';5D' backward-word
#bindkey ';5C' forward-word


# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# Turn on command not found hook(searches repos when command 404)
# source /usr/share/doc/pkgfile/command-not-found.zsh
