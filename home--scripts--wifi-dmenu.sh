WIFIFILE=$(ls ~/wifi | sed s/\ /\n/ | dmenu -p "connect-to:" -fn "Tamsyn" -nb "#2E3440" -nf "#D8DEE9" -sb "#2E3440" -sf "#A3BE8C")

if [ ! $WIFIFILE = "" ]; 
then urxvtc -e sh -c \
	"bspc node --focus  newer;            \
	 bspc node --state  floating;         \
	 bspc node --resize top       0  161; \
	 bspc node --resize bottom    0 -161; \
	 bspc node --resize right  -245    0; \
	 bspc node --resize left    245    0; \
	 bspc node --move          -601 -389; \
	 sudo killall wpa_supplicant; \
	 sudo wpa_supplicant -B -iwlp2s0 -c ~/wifi/$WIFIFILE";
fi
