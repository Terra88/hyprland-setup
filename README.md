# hyprland-setup<br><br>
Current keybinds, are:<br>
-windows+Q : exit highlighted window/program.<br>
-windows+Enter(Return): open terminal<br>
-windows+R: open menu(installed programs)<br>
-windows+E: open file manager.<br>
-windows+M: logout to login screen(for power button etc)<br>
<br>
My-Hyprland-Setup-And-Config-Files
Read configuration-steps-hyprland.txt for setting up hyprland to my theme and to install packages necessary to run multimedia/games on this setup.

Styling:
pacman -S nwg-look breeze breeze-icons
pacman -S qt5ct qt6ct kvantum
yay -S kvantum-theme-catppuccin-git

nwg-look:
Color Scheme: Prefer dark
Icon: Breeze
Mouse Cursor: Breeze Dark

sudo -E kvantummanager
set wanted kvantum theme

wallpaper engine:
Create wallpaper folder to /home and add wallpaper.sh to /home folder aswell.
You can now add pictures to the wallpaper folder, or make sub folders for wallpapers and change wallpaper by pressing win+shift+w or by clicking the button 
on top right of your screen.


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
###**-windows+R: open menu(installed programs)<br>**
###**-windows+E: open file manager.<br>**
###**-windows+M: logout to login screen(for power button etc)<br>**


<img width="2561" height="1441" alt="2025-11-07-102332_hyprshot" src="https://github.com/user-attachments/assets/ace98e93-c609-4466-bc95-d28ba11814ea" />

