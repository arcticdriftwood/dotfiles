IMAGE="/tmp/i3lock.png"
LOCK_ICON="$1"
SCREENSHOT="scrot $IMAGE"
BLUR="0x2"

$SCREENSHOT
convert $IMAGE -blur $BLUR $IMAGE
convert $IMAGE $LOCK_ICON -gravity center -composite $IMAGE
i3lock -u -e -i $IMAGE
rm $IMAGE

