# My-Hyprland-Setup-And-Config-Files<br><br>
Read configuration-steps-hyprland.txt for setting up hyprland to my theme and to install packages necessary to run multimedia/games on this setup.

Features: Wallpaper engine, screen lock(hyprlock and a button to it), audio volume control icons and when pressed opens pavucontrol, bluetooth/network widgets, extra menu button, to open rofi, or wofi with, can be changed in the config, default: rofi), info bar that informs current folder path or web page name etc.

Notice: This project is still under construction, i am mainly focusing on my archlinux installer for now, and will finish the theme later. Even though it doesn't have much features, it does add more widgets than the regular hyprland install, which has zero extra widgets:

Custom waybar & wallpaper engine:
Create wallpaper folder to /home and add wallpaper.sh to /home folder aswell.
You can now add pictures to the wallpaper folder, or make sub folders for wallpapers and change wallpaper by pressing win+shift+w or by clicking the button 
on top right of your screen. "Notice - if the wallpaper folder has something else than pictures in it, it will break like .rar .zip etc files"

###**<br>If you want to use my other project: https://github.com/terra88/archlinux to install arch linux, you can install hyprland and the theme with it automatically with these steps:<br>^**
###**-Block 11 will prompt if you install Hyprland and ask, if you want to add my custom theme to it y/N. If you answer yes, additional packages will be installed that the theme requires and .config files will be copied** ###**automatically from this GitHub project. On a note you should also install the extra AUR packages, which are required for the theme.<br><br>**
###**-it will automatically give new user the rights to that folder. Also wallpaper engine will be added to /home as wallpaper.sh and a wallpaper folder that the engine rotates. hyprlock will have a lock button and a wallpaper**
###**set to it in /home/wallpaper folder called lock.jpg**
<br>
###**-Also Hyprland + GDM works best together. When logging in first time: (remember to click username, then press the gear icon low right and select hyprland before you login first time)<br>**
<br>
###**Current keybinds for Hyprland, are:<br>**
###**-windows+Q : exit highlighted window/program.<br>**
###**-windows+Enter(Return): open terminal<br>**
###**-windows+B: open browser<br>**
###**-windows+R: open menu(installed programs)<br>**
###**-windows+E: open file manager.<br>**
###**-windows+M: logout to login screen(for power button etc)<br>**

CONTENTS:

After Archinstall -> hyprland window manager configuration - For Manual installation.
Unzip the config.zip files under "/home/username/.config/" folder. (PS.the folder is hidden, you can enter it from the top bar)
copy and paste wallpaper & wallpaper.sh to /home directory

after you have all the packages unzipped to .config folder, press:
windows + M to logout and re-login, to load the theme up.

Packages to Install:
INSTALL COMMANDS:

Pacman:
sudo pacman -S nano wget networkmanager network-manager-applet bluez bluez-utils blueman hypridle hyprlock hyprpaper hyprshot slurp swayidle swaylock waybar xdg-desktop-portal-hyprland qt5-wayland qt6-wayland qt5ct qt6ct xdg-utils breeze breeze-icons discover dolphin dolphin-plugins kate konsole krita kvantum polkit-kde-agent pipewire gst-plugin-pipewire pavucontrol gst-libav gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly otf-font-awesome ttf-hack cpupower brightnessctl thermald smartmontools htop btop nvtop qview ark kitty konsole firefox dunst wofi nwg-look nwg-displays archlinux-xdg-menu uwsm

Paru - Install AUR package helper for (kvantum-theme-catppuccin-git):
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru -S kvantum-theme-catppuccin-git qt6ct-kde wlogout wlrobs-hg qview

All packages listed here, what the "system" is built from. excluded linux kernels & gpu drivers etc.
CONTENTS:
1. Core System / Base System
-nano / vim – Terminal text editors.
-wget – Command-line file downloader.

2. Networking (Everything for networking, Bluetooth, SSH, and Wi-Fi control.)
Packages:
-networkmanager – Main network connection manager.
-network-manager-applet – System tray applet for NetworkManager.
-bluez – Official Linux Bluetooth protocol stack.
-bluez-utils – Bluetooth management tools (bluetoothctl, etc.).
-blueman – GUI Bluetooth manager.

3. Display Server / Wayland / Hyprland - (Packages that provide your compositor, Wayland tools, and Hyprland ecosystem.) Packages:
-hypridle – Idle daemon (sleep, lock actions).
-hyprlock – Screen locker for Hyprland.
-hyprpaper – Wallpaper manager for Hyprland.
-hyprshot – Screenshot tool for Hyprland.
-slurp – Region selector for screenshots/screen recording.
-swayidle – Generic Wayland idle manager (alternate to hypridle).
-swaylock – Screen locker (not used if using hyprlock).
-waybar – Customizable Wayland system bar.
-wlogout – Logout/shutdown menu for Wayland.
-wlrobs-hg – OBS WLroots screen capture plugin.
-uwsm – Universal Wayland Session Manager.
-xdg-desktop-portal-hyprland – Portal backend for Hyprland (screensharing/file dialogs).
-General Wayland support
-qt5-wayland – Enables Qt5 apps on Wayland.
-qt6-wayland – Enables Qt6 apps on Wayland.
-qt5ct / qt6ct – Qt theming/config utilities.
-xdg-utils – Standard desktop environment utilities.

4. KDE / Qt Apps & Frameworks - (You have multiple KDE/Qt applications and theming tools.)
Packages:
-breeze – Official KDE theme and icon set.
-breeze-icons
-kitty – GPU accelerated terminal.
-discover – KDE software manager.
-dolphin – KDE file manager.
-dolphin-plugins – Extra features for Dolphin.
-kate – KDE advanced text editor.
-konsole – KDE terminal emulator.
-krita – Professional digital painting program.
-kvantum / kvantum-theme-catppuccin-git – Qt theme engine + Catppuccin theme.
-polkit-kde-agent – Polkit authentication agent for KDE environments.

5. Audio / Pipewire / GStreamer - (Multimedia and audio support.)
Packages:
-PipeWire stack
-pipewire – Modern audio/video server.
-gst-plugin-pipewire – PipeWire integration for GStreamer.
-pavucontrol – Pulse/pipewire volume control GUI.
-GStreamer codecs
-gst-libav – Extra codecs via FFmpeg.
-gst-plugins-base – Required base codecs.
-gst-plugins-good – High-quality free codecs.
-gst-plugins-bad – Less-tested codecs.
-gst-plugins-ugly – Codecs with licensing concerns.

6. Fonts & Icons
Packages:
-otf-font-awesome – Popular icon font.
-ttf-hack – Monospace programming font.

7. System Utilities / Monitoring - (Tools for monitoring hardware and managing power.)
Packages:
-cpupower – Manage CPU frequency scaling.
-brightnessctl – Control screen brightness.
-thermald – Temperature management daemon.
-smartmontools – SMART disk health monitoring.
-htop / btop – System resource monitors.
-nvtop – GPU usage monitor (NVIDIA/AMD/Intel).

8. File Managers / Viewers
Packages:
-qview – Simple, lightweight image viewer.
-ark – KDE archive/compression tool.

9. Package Management / AUR Tools
Packages:
-paru – AUR helper.
-paru-debug – Debug symbols for paru.

11. Apps & Extras
Packages:
-firefox – Web browser.
-dunst – Lightweight notification daemon.
-rofi / wofi – App launchers (rofi = X11/Wayland; wofi = wayland-native).
-nwg-look – GTK appearance manager.
-nwg-displays – Display configuration utility for Wayland.

12. Miscellaneous
Packages:
-archlinux-xdg-menu – Auto-generates menu entries for desktop environments.
-uwsm – Universal Wayland session manager.



<img width="2561" height="1441" alt="2025-11-07-102332_hyprshot" src="https://github.com/user-attachments/assets/ace98e93-c609-4466-bc95-d28ba11814ea" />

