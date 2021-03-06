WIFIFILE=$(ls ~/wifi | sed s/\ /\n/ | dmenu -p "connect-to:" -fn "Tamsyn-9" -nb "#2E3440" -nf "#D8DEE9" -sb "#2E3440" -sf "#A3BE8C")

if [ ! $WIFIFILE = "" ]; 
then st -n "wifi-dmenu" -e sh -c \
	 "sudo killall wpa_supplicant; \
	  sudo wpa_supplicant -B -iwlp2s0 -c ~/wifi/$WIFIFILE";
fi
