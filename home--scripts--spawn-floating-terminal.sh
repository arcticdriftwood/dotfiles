#!/bin/bash

# from an r/bspwm thread, %s/xdo/xdotool/, hide -> windowunmap...

id=$(xdotool search --classname dropdown);
if [ -z "$id" ]; then
	urxvt -name "dropdown";
else
	cmd='windowunmap';
	state=$(xprop -id $id | awk '/window state:/ {print $3}');
	if [[ "$state" == "Withdrawn" ]]; then
		cmd='windowmap';
	fi
	xdotool $cmd $id
fi
