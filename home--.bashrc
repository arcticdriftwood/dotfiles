# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# use existing tmux sessions on start
# breaks if > 10
#if [[ $TERM == rxvt-unicode-256color ]] ; then
#case $- in
#    *i*)
#    if command -v tmux>/dev/null; then
#        if [[ ! $TERM == screen ]] && [[ -z $TMUX ]]; then
#          if tmux ls 2> /dev/null | grep -q -v attached; then
#            exec tmux attach -t $(tmux ls 2> /dev/null | grep -v attached | head -1 | cut -d : -f 1)
#          else
#            exec tmux
#          fi
#        fi
#    fi
#    ;;
#esac
#echo 1;
#fi
	
alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\W $ '

connect-to() {
	echo "killing wpa_supplicant"
	sudo killall wpa_supplicant
	echo "restarting with $1"
	sudo wpa_supplicant -iwlp2s0 -c $1 -B
}

connect-to-open() {
	echo "killing wpa_supplicant if it's up"
	sudo killall wpa_supplicant
	echo "connecting to ssid $1"
	sudo iwconfig wlp2s0 essid $1
}
