# battery-wallpaper

<p align="left">
  <img src="https://img.shields.io/badge/Maintained%3F-Yes-blueviolet?style=flat-square">
  <img src="https://img.shields.io/github/license/adi1090x/battery-wallpaper?style=flat-square">
  <img src="https://img.shields.io/github/stars/adi1090x/battery-wallpaper?color=red&style=flat-square">
  <img src="https://img.shields.io/github/forks/adi1090x/battery-wallpaper?style=flat-square">
  <img src="https://img.shields.io/github/issues/adi1090x/battery-wallpaper?style=flat-square">
  <img src="https://img.shields.io/badge/Linux-Yes-yellow?style=flat-square&logo=linux">
  <img src="https://img.shields.io/badge/Mac-Yes-green?style=flat-square&logo=apple">
<a href="https://github.com/nadehi18/battery-wallpaper-windows" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/Windows-Yes-blue?style=flat-square&logo=windows"></a>  
</p>

<p align="left">
<a href="https://www.buymeacoffee.com/adi1090x"><img src="https://raw.githubusercontent.com/adi1090x/files/master/other/bmac.png" alt="Buy Me A Coffee"></a>
<a href="https://ko-fi.com/adi1090x"><img src="https://raw.githubusercontent.com/adi1090x/files/master/other/kofi.png" alt="Support me on ko-fi"></a>
</p>

Simple bash script to set an animated battery as desktop wallpaper. It's shows charging animation and changes according to battery percentage.

![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/leaves.gif) <br />

### How to install
Follow the steps below (You can run `test.sh` to test it before installing it on your system) -

+ Install *acpi*, *xrandr(for xfce)*, *feh* or *wallpaper* 
```
# On Archlinux
sudo pacman -Sy acpi xorg-xrandr feh

# On Ubuntu or Debian
sudo apt-get install acpi x11-xserver-utils feh

# On MacOS
brew install wallpaper
```
+ *For swaywm support users must install [oguri](https://github.com/vilhalmer/oguri). The `oguri` daemon must be started for the script to work. `Oguri` can be installed on Arch linux via [AUR](https://aur.archlinux.org/packages/oguri-git/).*

+ Clone this repository and...
```
cd $HOME
git clone https://github.com/adi1090x/battery-wallpaper.git
cd battery-wallpaper
chmod +x install.sh
./install.sh
```

+ Run the program and choose an option
```
$ bwall

Battery Wallpaper V2.0
Set desktop background according to battery percentage, with charging animation.
Developed By - Aditya Shakya (@adi1090x)

usage: bwall [-s] style [-d] delay [-h]

-s  style     name of icon/bg style.
-d  delay     set charging animation delay (default 0.8s).
-h  help      show this usage/help message.

Styles Dir: /usr/share/battery-wallpaper/images

Available styles:  bonsai  cartoon  city  city_alt  colours  cup_black  cup_dark  egg
faded  industrial  mechanical  paper  pixel_city  slash  space  
```

### Features

+ 21 different types of battery wallpapers/icons.
+ Shows battery charging animation.
+ Stop animation when battery is fully charged.
+ When not charging, icon changes according to battery percentage.
+ Support dual or more batteries.
+ User can add their own icons/styles/wallpapers.
+ Tested on - **WM:** *Openbox*, *i3wm*, *bspwm*, *awesomewm*, *Fluxbox*, *Fvwm*, *Swaywm* & **DE:** *KDE(neon)*, *Pantheon*, *Gnome(ubuntu, pop_os)*, *Deepin*, *Cinnamon*, *XFCE*, *LXDE*, *MATE*.

### Previews

<details><summary>Click To View</summary>

`Bonsai`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/bonsai.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/bonsai.png)|

`Bar`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/bar.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/bar.png)|

`Cartoon`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/cartoon.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/cartoon.png)|

`Charge`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/charge.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/charge.png)|

`Colours`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/colours.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/colours.png)|

`Cup Black`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/cup_black.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/cup_black.png)|

`Cup Dark`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/cup_dark.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/cup_dark.png)|

`Egg`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/egg.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/egg.png)|

`Faded`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/faded.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/faded.png)|

`Frame`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/frame.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/frame.png)|

`Industrial`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/industrial.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/industrial.png)|

`Leaves`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/leaves.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/leaves.png)|

`Mechanical`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/mechanical.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/mechanical.png)|

`Panel`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/panel.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/panel.png)|

`Paper`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/paper.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/paper.png)|

`Slash`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/slash.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/slash.png)|

`Sweet`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/sweet.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/sweet.png)|

`Space`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/space.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/space.png)|

`Pixel City`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/pixel_city.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/pixel_city.png)|

`City`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/city.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/city.png)|

`City Alt`
|Charging|Full|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charging/city_alt.gif)|![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/full/city_alt.png)|

</details>

### Support This Project
<p align="left">
<a href="https://www.paypal.me/adi1090x" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/paypal-adi1090x-blue?style=for-the-badge&logo=paypal"></a>
<a href="https://www.buymeacoffee.com/adi1090x" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/BuyMeAcoffee-adi1090x-orange?style=for-the-badge&logo=buy-me-a-coffee"></a>  
<a href="https://ko-fi.com/adi1090x" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/KoFi-adi1090x-red?style=for-the-badge&logo=ko-fi"></a>  
</p>

### FYI
+ If you can improve it, you're welcome.
+ You can add ***bwall -s style &*** to your wm autostart file to set it as wallpaper after login.
+ Have Fun!
