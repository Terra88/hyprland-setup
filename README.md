# Hyprland-Setup/Settings-And-Config-Files<br><br> 

Configs work on all, but package libraries and how to install them varies depending on distro:
<br>
Read configuration-steps-hyprland.txt or follow the readme for setting up this theme.

Features:<br> 
-Wallpaper engine(rotate wallpapers with keybind or interactive wallpaper button "top right")<br> 
-Screen lock(hyprlock)&Wlogout interactive widgets for (power options).<br>
-Custom Waybar with interactive widgets like: audio/mic volume control, when pressed opens pavucontrol, bluetooth/network widgets, extra menu button, to open current default menu app: rofi)<br>
-Info bar that informs current folder path or web page name etc.<br>
-Kitty terminal & Dolphin file manager customised to work with the theme(kvantum / kvantum-theme-catppuccin-git – Qt theme engine + Catppuccin theme.).<br>
-uses otf-font-awesome - icons etc.<br>
<img width="2560" height="1440" alt="2025-11-21-115942_hyprshot" src="https://github.com/user-attachments/assets/bc580e32-c09c-446c-8198-43d1777b9a01" />
<img width="2560" height="1440" alt="2025-11-21-002603_hyprshot" src="https://github.com/user-attachments/assets/c23b24d8-0abe-48dd-8a05-4ddd49224969" />

Notice: This project is still under construction - so more updates and features coming out, but as a notice it is functional as it is.

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
Basic hyprland packages:<br>
(hyprland hyprpaper hyprshot hypridle hyprlock)<br>

Pacman:(copy / paste to terminal)<br>
sudo pacman -S nano wget networkmanager network-manager-applet bluez bluez-utils blueman hypridle hyprlock hyprpaper hyprshot slurp swayidle swaylock waybar xdg-desktop-portal-hyprland xdg-user-dirs qt5-wayland qt6-wayland qt5ct qt6ct xdg-utils breeze breeze-icons discover dolphin dolphin-plugins kate konsole krita kvantum polkit-kde-agent pipewire gst-plugin-pipewire pavucontrol gst-libav gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly otf-font-awesome ttf-hack cpupower brightnessctl thermald smartmontools htop btop nvtop qview ark kitty konsole firefox dunst rofi wofi nwg-look nwg-displays archlinux-xdg-menu uwsm flatpak

Paru - Install AUR package helper for (kvantum-theme-catppuccin-git):<br>
sudo pacman -S --needed base-devel git<br>
git clone https://aur.archlinux.org/paru.git<br>
cd paru<br>
makepkg -si<br>
<br>

paru -S kvantum-theme-catppuccin-git wlogout wlrobs-hg qview<br><br>

All packages listed here, what the "system" is built from. excluded linux kernels & gpu drivers etc.<br>
CONTENTS:<br>
1. Core System / Base System<br>
-nano / vim – Terminal text editors.<br>
-wget – Command-line file downloader.<br><br>

2. Networking (Everything for networking, Bluetooth, SSH, and Wi-Fi control.)<br>
Packages:<br>
-networkmanager – Main network connection manager.<br>
-network-manager-applet – System tray applet for NetworkManager.<br>
-bluez – Official Linux Bluetooth protocol stack.<br>
-bluez-utils – Bluetooth management tools (bluetoothctl, etc.).<br>
-blueman – GUI Bluetooth manager.<br><br>

3. Display Server / Wayland / Hyprland - (Packages that provide your compositor, Wayland tools, and Hyprland ecosystem.)<br> Packages:<br>
-hypridle – Idle daemon (sleep, lock actions).<br>
-hyprlock – Screen locker for Hyprland.<br>
-hyprpaper – Wallpaper manager for Hyprland.<br>
-hyprshot – Screenshot tool for Hyprland.<br>
-slurp – Region selector for screenshots/screen recording.<br>
-swayidle – Generic Wayland idle manager (alternate to hypridle).<br>
-swaylock – Screen locker (not used if using hyprlock).<br>
-waybar – Customizable Wayland system bar.<br>
-wlogout – Logout/shutdown menu for Wayland.<br>
-wlrobs-hg – OBS WLroots screen capture plugin.<br>
-uwsm – Universal Wayland Session Manager.<br>
-xdg-desktop-portal-hyprland – Portal backend for Hyprland (screensharing/file dialogs).<br>
-General Wayland support<br>
-qt5-wayland – Enables Qt5 apps on Wayland.<br>
-qt6-wayland – Enables Qt6 apps on Wayland.<br>
-qt5ct / qt6ct – Qt theming/config utilities.<br>
-xdg-utils – Standard desktop environment utilities.<br><br>

4. KDE / Qt Apps & Frameworks - (You have multiple KDE/Qt applications and theming tools.)<br>
Packages:<br>
-breeze – Official KDE theme and icon set.<br>
-breeze-icons<br>
-kitty – GPU accelerated terminal.<br>
-discover – KDE software manager.<br>
-dolphin – KDE file manager.<br>
-dolphin-plugins – Extra features for Dolphin.<br>
-kate – KDE advanced text editor.<br>
-konsole – KDE terminal emulator.<br>
-krita – Professional digital painting program.<br>
-kvantum / kvantum-theme-catppuccin-git – Qt theme engine + Catppuccin theme.<br>
-polkit-kde-agent – Polkit authentication agent for KDE environments.<br><br>

5. Audio / Pipewire / GStreamer - (Multimedia and audio support.)<br>
Packages:<br>
-PipeWire stack<br>
-pipewire – Modern audio/video server.<br>
-gst-plugin-pipewire – PipeWire integration for GStreamer.<br>
-pavucontrol – Pulse/pipewire volume control GUI.<br>
-GStreamer codecs<br>
-gst-libav – Extra codecs via FFmpeg.<br>
-gst-plugins-base – Required base codecs.<br>
-gst-plugins-good – High-quality free codecs.<br>
-gst-plugins-bad – Less-tested codecs.<br>
-gst-plugins-ugly – Codecs with licensing concerns.<br>

6. Fonts & Icons<br>
Packages:<br>
-otf-font-awesome – Popular icon font.<br>
-ttf-hack – Monospace programming font.<br>
<br>
7. System Utilities / Monitoring - (Tools for monitoring hardware and managing power.)<br>
Packages:<br>
-cpupower – Manage CPU frequency scaling.<br>
-brightnessctl – Control screen brightness.<br>
-thermald – Temperature management daemon.<br>
-smartmontools – SMART disk health monitoring.<br>
-htop / btop – System resource monitors.<br>
-nvtop – GPU usage monitor (NVIDIA/AMD/Intel).<br>
<br>
8. File Managers / Viewers<br>
Packages:<br>
-qview – Simple, lightweight image viewer.<br>
-ark – KDE archive/compression tool.<br><br>

9. Package Management / AUR Tools<br>
Packages:<br>
-paru – AUR helper.<br>
-paru-debug – Debug symbols for paru.<br>
<br>
11. Apps & Extras<br>
Packages:<br>
-firefox – Web browser.<br>
-dunst – Lightweight notification daemon.<br>
-rofi / wofi – App launchers (rofi = X11/Wayland; wofi = wayland-native).<br>
-nwg-look – GTK appearance manager.<br>
-nwg-displays – Display configuration utility for Wayland.<br>
<br>
12. Miscellaneous<br>
Packages:<br>
-archlinux-xdg-menu – Auto-generates menu entries for desktop environments.<br>
-uwsm – Universal Wayland session manager.<br>

