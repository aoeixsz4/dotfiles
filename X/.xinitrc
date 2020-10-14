#!/usr/bin/env zsh
setxkbmap dk
redshift -l 53.5033131:9.9974266 &
export PATH=~/bin/X:$PATH
exec ~/bin/startdwm
