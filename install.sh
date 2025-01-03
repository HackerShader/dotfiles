#!/bin/bash

# Paithon Hyprland 2024
# https://github.com/HackerShader/dotfiles

LOG="install.log" 

clear 

# Checking yay
YAY=/sbin/yay
if [ -f "$YAY" ]; then 
    echo -e "yay >> installed"
else 
    echo -e "yay >> Installing"
    git clone https://aur.archlinux.org/yay.git &>> $LOG
    cd yay
    makepkg -si --noconfirm &>> ../$LOG
    cd ..
fi

# Install packages
echo -e "Package >> Installing required packages"
yay -Suy --noconfirm &>> ../$LOG

yay -S --noconfirm hyprland kitty waybar wofi swww swaylock-effects wlogout mako xdg-desktop-portal-hyprland swappy grim grimblast slurp polkit-gnome python-requests pamixer pavucontrol brightnessctl bluez bluez-utils blueman network-manager-applet gvfs file-roller btop pacman-contrib ttf-jetbrains-mono-nerd noto-fonts-emoji lxappearance xfce4-settings sddm qt6 hyprpaper vesktop google-chrome obs-studio fish neofetch cava neovim wf-recorder xournalpp nautilus xdg-desktop-portal-gtk lazygit mpv nwg-look jdk-openjdk webstorm auto-cpufreq cups thermald &>> ../$LOG 

# Enable services
echo -e "Service >> Enabling Bluetooth"
sudo systemctl enable --now bluetooth.service &>> $LOG
sleep 2

echo -e "Service >> Enabling SDDM"
sudo systemctl enable sddm &>> $LOG
sleep 3

# Apply configurations
sudo cp -R ./.config ~/.config &>> $LOG

sudo cp -R ./extras/paithon-sddm /usr/share/sddm/themes/
sudo chown -R $USER:$USER /usr/share/sddm/themes/paithon-sddm
echo -e "[Theme]\nCurrent=paithon-sddm\n\n[General]\nDisplayServer=wayland" || sudo tee -a /etc/sddm.conf &>> $LOG
WLDIR=/usr/share/wayland-sessions
if [ -d "$WLDIR" ]; then
    echo -e "$WLDIR found"
else
    sudo mkdir $WLDIR
fi 
sudo cp extras/hyprland.desktop /usr/share/wayland-sessions/
sudo sudo sed -i 's/Exec=Hyprland/Exec=\/home\/'$USER'\/start-hypr/' /usr/share/wayland-sessions/hyprland.desktop
cp extras/start-hypr ~/

chmod +x ~/.config/hypr/scripts/xdg-portal-hyprland
xfconf-query -c xsettings -p /Net/ThemeName -s "Adwaita-dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Adwaita-dark"
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface icon-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

echo -e "Done! Returning SDDM in 5 seconds"
sleep 5
exec sudo systemctl start sddm &>> $LOG
