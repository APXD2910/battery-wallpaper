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

![gif](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/charge.gif) <br />

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

<details><summary>Charging</summary>

|Cup|Paper|Cartoon|Faded|Colours|Slash|Industrial|
|--|--|--|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/0/charge.gif)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/1/charge.gif)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/2/charge.gif)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/3/charge.gif)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/4/charge.gif)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/5/charge.gif)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/6/charge.gif)|

|Egg|Mechanical|Bonsai|City|Pixel City|City Alt|Space|
|--|--|--|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/7/charge.gif)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/8/charge.gif)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/9/charge.gif)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/10/charge.gif)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/13/charge.gif)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/12/charge.gif)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/11/charge.gif)|

</details>

<details><summary>Discharging</summary>

`Cup`

|0-20%|20-40%|40-60%|60-80%|80-100%|
|--|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/0/1.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/0/2.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/0/3.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/0/4.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/0/5.png)|

`Colours`

|0-20%|20-40%|40-60%|60-80%|80-100%|
|--|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/4/1.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/4/2.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/4/3.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/4/4.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/4/5.png)|

`Slash`

|0-20%|20-40%|40-60%|60-80%|80-100%|
|--|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/5/1.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/5/2.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/5/3.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/5/4.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/5/5.png)|

`Industrial`

|0-20%|20-40%|40-60%|60-80%|80-100%|
|--|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/6/1.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/6/2.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/6/3.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/6/4.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/6/5.png)|

`Paper`

|0-25%|25-50%|50-75%|75-100%|
|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/1/1.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/1/2.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/1/3.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/1/4.png)|

`Cartoon`

|0-25%|25-50%|50-75%|75-100%|
|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/2/1.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/2/2.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/2/3.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/2/4.png)|

`Faded`

|0-25%|25-50%|50-75%|75-100%|
|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/3/1.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/3/2.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/3/3.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/3/4.png)|

`Egg`

|0-25%|25-50%|50-75%|75-100%|
|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/7/1.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/7/2.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/7/3.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/7/4.png)|

`Mechanical`

|0-25%|25-50%|50-75%|75-100%|
|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/8/1.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/8/2.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/8/3.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/8/4.png)|

`Bonsai`

|0-20%|20-30%|30-40%|40-50%|50-60%|60-70%|70-80%|80-90%|90-100%|
|--|--|--|--|--|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/9/1.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/9/2.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/9/3.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/9/4.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/9/5.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/9/6.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/9/7.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/9/8.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/9/9.png)|

</details>

<details><summary>Fully Charged</summary>

|Cup|Paper|Cartoon|Faded|Colours|
|--|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/0.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/1.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/2.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/3.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/4.png)|

|Slash|Industrial|Egg|Mechanical|Bonsai|
|--|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/5.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/6.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/7.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/8.png)|![img](https://raw.githubusercontent.com/adi1090x/battery-wallpaper/master/preview/10.png)|

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
