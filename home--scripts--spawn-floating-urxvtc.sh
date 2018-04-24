#!/bin/bash

# A cobbled-together floating terminal.

if [ -f ~/.floating-urxvtc-open ]; 
then
	kill $(cat ~/.floating-urxvtc-open)
	rm ~/.floating-urxvtc-open
else
	urxvtc
	bspc node -f newer
	bspc node -t floating
	bspc node -z bottom 0 -161
	bspc node -z top    0  161
	bspc node -g sticky
	echo $(pgrep -nP $(pgrep urxvtd)) > ~/.floating-urxvtc-open
fi
