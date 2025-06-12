# rice


# [View all keybinds](./binds.md)


https://github.com/user-attachments/assets/91d50319-ccb5-4758-bff7-c22b178f4fde




## Installation

### first install hyprland https://wiki.hyprland.org/Getting-Started/Installation/

### update pacman

```bash
sudo pacman -Syu
```
### install all packages 

```bash
sudo pacman -S kitty nautilus git cmake meson cpio pkg-config gcc hypridle hyprlock fuzzel keepassxc flatpak discord zsh fastfetch firefox gdm --needed --noconfirm
```

### install ZSH and OH-MY-ZSH 

```bash
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

### install zsh-autosuggestions plugins

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/custom/plugins/zsh-autosuggestions
```

### quit hyprland (relaunch hyprland after that)


```bash
hyprctl dispatch exit
```

### install yay (Optional)

```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```


### a) install AUR packages from yay

```bash
yay -S hyprshot clipse bibata-cursor-theme otf-monocraft --needed --noconfirm
```

### b) install AUR packages from source

[hyprshot](https://github.com/Gustash/Hyprshot)

[clipse](https://github.com/savedra1/clipse)

[bibata-cursor-theme](https://github.com/ful1e5/Bibata_Cursor)

[otf-monocraft](https://github.com/IdreesInc/Monocraft)





### force uninstallation of packages that will create conflicts later (they'll be reinstalled as -git versions later)


```bash
sudo pacman -Rns hyprutils hyprwayland-scanner
```

### install hyprpanel

https://hyprpanel.com/getting_started/installation.html

## Plugins

### add plugins list

```bash
hyprpm update
hyprpm add https://github.com/hyprwm/hyprland-plugins
hyprpm add https://github.com/KZDKM/Hyprspace
```

### enable plugin

```bash
hyprpm enable hyprexpo
hyprpm enable Hyprspace
```


## Extras

### install vencord

```bash
sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"
```
### install missioncenter (task manager)

```bash
flatpak install flathub io.missioncenter.MissionCenter
```

## Clone

### this repository


```bash
cd
git clone https://github.com/dogmwa/rice
cd rice
```

### Change file permissions

```bash
chmod +x script.sh
```
### Start script

```bash
./script.sh
```

## Reboot

```bash
reboot
```


## HYPRPANEL CONFIGURATION

### (because exporting and importing hyprpanel_theme.json didn’t work idk why)

### Click on the Hyprpanel logo in the top left corner, then go to Settings.
### In the Settings page, click on Configuration, then on Bar, and enable Floating Bar.

### Next, go to Theming, then to General, enable Apply Wallpapers, and set the wallpaper available in the repository.

### Go to Matugen Settings, enable Matugen, set the Matugen Theme to Dark, the Matugen Scheme to Monochrome, and the Matugen Variation to monochrome_3.

### Finally, click on Bar and enable Transparent.

### After that, you can edit the Hyprpanel configuration however you like.



## gtk theme


### for gtk theme i use whitesur-gtk-theme

### clone whitesur-gtk-theme repository


```bash
cd
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1
cd WhiteSur-gtk-theme
```

### kill nautilus and start whitesur-gtk-theme install script

```bash
pkill nautilus
./install.sh -l -t all -N mojave
```

### put my custom gdm wallpaper

```bash
cd
mv rice/Documents/wallpaper/background.jpg WhiteSur-gtk-theme/wall.jpg
cd ~/WhiteSur-gtk-theme
```

### start whitesur-gtk-theme tweaks script

```bash
pkill firefox
sudo ./tweaks.sh -g -b "wall.jpg" -nd -nb
sudo ./tweaks.sh -f
```

### and for icon i use WhiteSur Icon Theme

### clone whitesur-gtk-icon repository

```bash
cd
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
```

### start whitesur-gtk-icon install script

```bash
./install.sh
```

### Don’t forget to disable and uninstall your current display manager (ly, sddm, lightdm), and then enable GDM.

```bash
sudo systemctl enable --now gdm
```


### After rebooting into GDM, you’ll see the login screen.
### Click on your user, then you’ll see a menu in the bottom right corner where you can easily select the default desktop environment (in this case, Hyprland).

### a) download tool for change gtk themes and icon themes from yay

```bash
yay -S --needed --noconfirm nwg-look themechanger-git
```

### b) download tool for change gtk themes and icon themes from pacman and source

```bash
sudo pacman --needed --noconfirm nwg-look
```

[Themechanger](https://github.com/ALEX11BR/ThemeChanger)


### Use themechanger to apply the WhiteSur GTK theme,
### and nwg-look to configure WhiteSur icons

### IF NAUTILUS IS BUGGY, RERUN THE GTK THEME SCRIPT AND KILL NAUTILUS

```bash
pkill nautilus
cd
cd WhiteSur-gtk-theme
./install.sh -l -t all -N mojave
```
