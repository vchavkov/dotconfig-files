WALLPAPERS="$HOME/src/dotconfig-files/wallpapers"
ALIST=( `ls -w1 $WALLPAPERS` )
RANGE=${#ALIST[*]}
SHOW=$(( $RANDOM % $RANGE ))

feh --bg-scale $WALLPAPERS/${ALIST[$SHOW]}