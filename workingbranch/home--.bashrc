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

wifi-scan () {
	echo "killing wpa_supplicant if it's up"
	sudo killall wpa_supplicant
	echo "enabling wifi if it's down"
	sudo ip link set wlp2s0 up
	echo -e "good to go\n"
	echo "scanning"
	echo -e "\033[1;30m--------"
	echo -ne "\033[0;32m"
	sudo iw dev wlp2s0 scan | grep -i ssid | sed s/:/\\n/g | sed /SSID/d | sed s/\ //g
	echo -ne "\033[0;0m"
	# sudo iw dev wlp2s0 scan | grep -ie "ssid" -e "signal" | sed -rn 'N;s/\n/ /;p'

}

alias xi='xbps-install'
alias xu='xbps-install -Su'
alias xq='xbps-query'
alias xr='xbps-remove'
alias sudo='sudo '
