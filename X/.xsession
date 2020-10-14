redshift -l 53.5033131:9.9974266 &
xrdb -merge ~/.Xresources
export PATH=~/bin/X:$PATH
(conky | while read LINE; do xsetroot -name "$LINE"; done) &
