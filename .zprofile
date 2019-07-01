export LANG=en_US.UTF-8
export TERMINAL=st

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
        exec startx
fi
