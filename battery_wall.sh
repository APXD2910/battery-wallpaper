#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail   : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

## Colors
R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
M='\033[1;35m'
C='\033[0;36m'
W='\033[1;37m'

# zsh fix
if [[ $SHELL = "/usr/bin/zsh" ]] || [[ $SHELL = "/bin/zsh" ]] || [[ $SHELL = "zsh" ]] ; then
	set -o shwordsplit 2>/dev/null
fi

# set wallpaper in kde
setkde() {
qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript "
    var allDesktops = desktops();
    print (allDesktops);
    for (i=0;i<allDesktops.length;i++) {
        d = allDesktops[i];
        d.wallpaperPlugin = 'org.kde.image';
        d.currentConfigGroup = Array('Wallpaper',
                                    'org.kde.image',
                                    'General');
        d.writeConfig('Image', 'file://"$1"')
    }"
}

case "$OSTYPE" in
	darwin*)
			DIR="/usr/local/share/battery-wallpaper"
			;;
	linux*)
			DIR="/usr/share/battery-wallpaper"
			;;
	*)
			DIR="/usr/share/battery-wallpaper"
			;;
esac

case "$OSTYPE" in
	darwin*)
			BATTERY="$(pmset -g batt | egrep "([0-9]+\%).*" -o --colour=auto | cut -f1 -d';'| tr -d \%,)"
			;;
	linux*)
			BATTERY="$(acpi | awk -F ' ' 'END {print $4}' | tr -d \%,)"
			;;
	*)
			BATTERY_PERCENT="?"
			;;
esac

case "$OSTYPE" in
	darwin*)
			[[ $(pmset -g ps | head -1) =~ "AC Power" ]] && CHARGE=1 || CHARGE=0
			;;
	linux*)
			CHARGE="$(acpi | awk -F ' ' 'END {print $3}' | tr -d \,)"
			;;
	*)
			CHARGE=0
			;;
esac

## For XFCE
if [[ "$OSTYPE" == "linux"* ]]; then
	SCREEN="$(xrandr --listactivemonitors | awk -F ' ' 'END {print $1}' | tr -d \:)"
    MONITOR="$(xrandr --listactivemonitors | awk -F ' ' 'END {print $2}' | tr -d \*+)"
fi

case "$OSTYPE" in
	darwin*)
			SETTER="wallpaper set"
			;;
	linux*)
			if [ -n "$SWAYSOCK" ]; then
				SETTER="eval ogurictl output '*' --image";
			elif [[ "$DESKTOP_SESSION" =~ ^(MATE|Mate|mate)$ ]]; then 
				SETTER="gsettings set org.mate.background picture-filename";
			elif [[ "$DESKTOP_SESSION" =~ ^(Xfce Session|xfce session|XFCE|xfce|Xubuntu|xubuntu)$ ]]; then 
				SETTER="xfconf-query --channel xfce4-desktop --property /backdrop/screen$SCREEN/monitor$MONITOR/workspace0/last-image --set";
			elif [[ "$DESKTOP_SESSION" =~ ^(LXDE|Lxde|lxde)$ ]]; then 
				SETTER="pcmanfm --set-wallpaper";
            elif [[ "$DESKTOP_SESSION" =~ ^(/usr/share/xsessions/plasma|NEON|Neon|neon|PLASMA|Plasma|plasma|KDE|Kde|kde)$ ]]; then 
				SETTER=setkde;
			elif [[ "$DESKTOP_SESSION" =~ ^(PANTHEON|Pantheon|pantheon|GNOME|Gnome|gnome|Gnome-xorg|gnome-xorg|UBUNTU|Ubuntu|ubuntu|DEEPIN|Deepin|deepin|POP|Pop|pop)$ ]]; then 
				SETTER="gsettings set org.gnome.desktop.background picture-uri";
			else 
				SETTER="feh --bg-scale"; 
			fi
			;;
	*)
			if [ -n "$SWAYSOCK" ]; then
				SETTER="eval ogurictl output '*' --image";
			elif [[ "$DESKTOP_SESSION" =~ ^(MATE|Mate|mate)$ ]]; then 
				SETTER="gsettings set org.mate.background picture-filename";
			elif [[ "$DESKTOP_SESSION" =~ ^(Xfce Session|xfce session|XFCE|xfce|Xubuntu|xubuntu)$ ]]; then 
				SETTER="xfconf-query --channel xfce4-desktop --property /backdrop/screen$SCREEN/monitor$MONITOR/workspace0/last-image --set";
			elif [[ "$DESKTOP_SESSION" =~ ^(LXDE|Lxde|lxde)$ ]]; then 
				SETTER="pcmanfm --set-wallpaper";
            elif [[ "$DESKTOP_SESSION" =~ ^(/usr/share/xsessions/plasma|NEON|Neon|neon|PLASMA|Plasma|plasma|KDE|Kde|kde)$ ]]; then 
				SETTER=setkde;
			elif [[ "$DESKTOP_SESSION" =~ ^(PANTHEON|Pantheon|pantheon|GNOME|Gnome|gnome|Gnome-xorg|gnome-xorg|UBUNTU|Ubuntu|ubuntu|DEEPIN|Deepin|deepin|POP|Pop|pop)$ ]]; then 
				SETTER="gsettings set org.gnome.desktop.background picture-uri";
			else 
				SETTER="feh --bg-scale"; 
			fi
			;;			
esac

STYLE=
DELAY=0.8

set_wallpaper() {
  image="$DIR/images/$STYLE/$1"
  if [ -f "$image.png" ]; then
		FORMAT="png"
  elif [ -f "$image.jpg" ]; then
		FORMAT="jpg"
  else
		echo -e $R"Invalid style name, Try again."; reset_color; exit 1;
  fi
  if [ $FORMAT ]; then
		$SETTER "$image.$FORMAT"
		return;
  fi
}

animate_wallpaper() {
	# cycle through charging images
	if [ "$STYLE" == "bonsai" ]; then
		for i in {1,9}; do
			set_wallpaper $i; sleep "$DELAY"
		done
	elif [ "$STYLE" == "cartoon" ] || [ "$STYLE" == "faded" ] || [ "$STYLE" == "mechanical" ] || [ "$STYLE" == "paper" ]; then
		for i in {1,2,5,8}; do
			set_wallpaper $i; sleep "$DELAY"
		done
	elif [ "$STYLE" == "city" ] || [ "$STYLE" == "city_alt" ] || [ "$STYLE" == "space" ]; then
		for i in {0,1,2,4,6,9}; do
			set_wallpaper $i; sleep "$DELAY"
		done
	elif [ "$STYLE" == "pixel_city" ] || [ "$STYLE" == "slash" ] || [ "$STYLE" == "colours" ]; then
		for i in {1,2,4,6,8}; do
			set_wallpaper $i; sleep "$DELAY"
		done
	elif [ "$STYLE" == "cup_black" ] || [ "$STYLE" == "cup_dark" ] || [ "$STYLE" == "industrial" ] || [ "$STYLE" == "bar" ] || [ "$STYLE" == "charge" ] || [ "$STYLE" == "frame" ] || [ "$STYLE" == "sweet" ]; then
		for i in {11,12,13,14,15}; do
			set_wallpaper $i; sleep "$DELAY"
		done
	elif [ "$STYLE" == "egg" ] || [ "$STYLE" == "leaves" ] || [ "$STYLE" == "panel" ]; then
		for i in {11,12,13,14}; do
			set_wallpaper $i; sleep "$DELAY"
		done
	# Plasma desktop crash during animation, so setting a single image as wallpaper during charging.
	elif [[ "$DESKTOP_SESSION" =~ ^(/usr/share/xsessions/plasma|NEON|Neon|neon|PLASMA|Plasma|plasma|KDE|Kde|kde)$ ]]; then 
        img="full"
        set_wallpaper $img; sleep 5
    fi
}

main() {
	## Charging Animation
    if [[ $CHARGE = *"Charging"* ]] && [[ $BATTERY -lt "100" ]]; then
        animate_wallpaper
    ## Stop Animation When Fully Charged
    elif [[ $CHARGE = *"Full"* ]]; then
        img="full"
        set_wallpaper $img; sleep 2
    ## Change According To Battery Percentage
    else
        num=$(($BATTERY/10))
        set_wallpaper $num; sleep 2
    fi
}

usage() {
	available_styles=($(ls $DIR/images))
	echo
	echo -e $R"Battery Wallpaper V2.0"
	echo -e $G"Set desktop background according to battery percentage, with charging animation."
	echo -e $Y"Developed By - Aditya Shakya (@adi1090x)"
	echo
	echo -e $B"usage: bwall [-s] style [-d] delay [-h]"
	echo
	echo -e $M"-s  style     name of icon/bg style."
	echo -e $M"-d  delay     set charging animation delay (default 0.8s)."
	echo -e $M"-h  help      show this usage/help message."
	echo
 	echo -e $C"Styles Dir: $DIR/images"
	echo
	printf $G"Available styles:  "
	printf -- $Y'%s  ' "${available_styles[@]}"
	printf -- '\n\n'
}

init() {
    while true; do
		main && echo "Using style '$STYLE' to set wallpaper." && exec $DIR/battery_wall.sh -s "$STYLE" -d "$DELAY"
    done
}

is_valid_style() {
    available_styles=($(ls $DIR/images))
    for i in "${available_styles[@]}"; do
        [ "$i" == "$1" ] && STYLE=$(echo "$1")
    done
}

reset_color() {
	tput sgr0 # reset attributes
	tput op # reset color
}

is_valid_style "$1"

while getopts ":s:d:h" opt; do
  case ${opt} in
    s )
		STYLE=$OPTARG
		;;
    d )
		DELAY=$OPTARG
		;;
    h )
		usage
		reset_color
		exit 0
		;;
    \?)
		echo -e $R"Unknown option,$G run ./test.sh -h"
		reset_color
		exit 1
		;;
    : )
		echo -e $R"Invalid:$G -$OPTARG$R requires an argument."
		reset_color
		exit 1
		;;
  esac
done

if [ "$STYLE" ]; then
    init
else
	usage
	reset_color
fi
