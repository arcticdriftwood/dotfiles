#!/bin/bash

# toggle-space.sh border_size gap_size border_size' gap_size'
# swaps between pairs on invocation

CURRENT_BORDER=$(bspc config border_width)
CURRENT_GAP=$(bspc config window_gap)

if [[ $CURRENT_BORDER -eq $1 && $CURRENT_GAP -eq $2 ]];
then 
	bspc config border_width $3 
	bspc config window_gap   $4 
else
	bspc config border_width $1
	bspc config window_gap   $2
fi
