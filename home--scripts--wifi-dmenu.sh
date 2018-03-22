WIFIFILE=$(ls ~/wifi | sed s/\ /\n/ | dmenu -p "connect-to:" -fn "Tamsyn" -nb "#2E3440" -nf "#D8DEE9" -sb "#2E3440" -sf "#A3BE8C")

urxvtc -e sh -c \
	"bspc node -f newer;          \
	 bspc node -t floating;       \
	 bspc node -z top    0  161;  \
	 bspc node -z bottom 0 -161;  \
	 bspc node -z right -245 0;   \
	 bspc node -z left   245 0;   \
	 sudo killall wpa_supplicant; \
	 sudo wpa_supplicant -B -iwlp2s0 -c ~/wifi/$WIFIFILE"
