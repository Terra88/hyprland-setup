# Hyprland Dynamic Theme & Dotfiles (Arch Linux)

A modular, Lua-based Hyprland desktop environment where the entire system color palette—window borders, Waybar, Rofi, Kitty, SwayNC, Nautilus (GTK), and Dolphin/Kate (Qt6)—dynamically adapts on the fly to the active wallpaper or a selected preset theme.

## Features

* **Dynamic Color Pipeline (`matugen`):** Extracts dominant colors from the active wallpaper and updates every desktop component in under a second without restarting the session.
* **Smooth Wallpaper Engine (`awww`):** High-refresh-rate (144 Hz) animated wallpaper transitions triggered directly from the top bar or via keybind.
* **Floating Waybar & Calendar:** Clicking the clock toggles the date format, and hovering opens an interactive monthly calendar. Includes quick-action buttons on the top right for wallpaper switching and the utility menu.
* **Rofi Utility Menu (`utility-menu.sh`):** Unified menu for wallpaper selection, preset themes (Catppuccin Mocha Pink, Tokyo Night, Gruvbox), audio/display settings, and power management (lock, suspend, reboot, shutdown).
* **Unified GTK & Qt6 Theming:** Nautilus (GTK3/GTK4) as well as Dolphin and Kate (Qt6/Breeze/KTextEditor) automatically follow the active dynamic palette.

<img width="2560" height="1600" alt="2026-11-23-103431_hyprshot" src="https://github.com/user-attachments/assets/056cf580-939d-492b-88aa-e6e68626d51a" />
<img width="2560" height="1600" alt="2026-11-23-103255_hyprshot" src="https://github.com/user-attachments/assets/73a7cdba-b56a-4ea5-9a41-0c77ee971eff" />
<img width="2560" height="1600" alt="2026-11-23-102609_hyprshot" src="https://github.com/user-attachments/assets/820e8665-b608-4455-80c8-5e37b8d78321" />

---

## 1. Required Packages (Arch Linux)

Install all required packages with a single `pacman` command:

```bash
sudo pacman -S --needed \
  hyprland hyprlock hypridle hyprshot slurp uwsm xdg-desktop-portal-hyprland \
  waybar rofi awww matugen swaync libnotify \
  kitty dolphin kate nautilus breeze breeze-icons qt6ct qt5ct nwg-look nwg-displays \
  pipewire wireplumber pipewire-pulse pavucontrol brightnessctl \
  networkmanager network-manager-applet bluez bluez-utils blueman \
  polkit-kde-agent archlinux-xdg-menu ttf-jetbrains-mono-nerd otf-font-awesome fastfetch

If you want to use Neovim with the theme:
sudo pacman -S --needed neovim ripgrep fd wl-clipboard tree-sitter-cli

2. Installation & SetupExtract configurations and wallpapers to your home directory:
Bash

unzip config.zip -d ~/.config/
unzip wallpaper.zip -d ~/
chmod +x ~/.config/hypr/scripts/*.sh

(Ensure wallpapers are located in ~/wallpaper/nature-culture/ and the lockscreen image is placed at ~/wallpaper/lock.jpg.)Create KDE & Kate theme directories and link the dynamic palette:
Bash

mkdir -p ~/.local/share/color-schemes ~/.local/share/org.kde.syntax-highlighting/themes
ln -sf ~/.config/kdeglobals ~/.local/share/color-schemes/Matugen.colors


Initialize all generated color files:
Bash
matugen image ~/wallpaper/nature-culture/wp1.jpg --source-color-index 0

Activate the theme in Kate (one-time setup):Open Kate and navigate to Settings → Configure Kate… → Color Themes → Default Theme: Matugen.Also select Settings → Window Color Scheme → Matugen.Log into Hyprland:
Select Hyprland (uwsm-managed) on your display manager (e.g., GDM) and log in.

3. KeybindsKeybindAction
SUPER + ReturnOpen terminal (kitty)
SUPER + ROpen application launcher (rofi)
SUPER + UOpen utility, theme, and power menu (utility-menu.sh)
SUPER + Shift + WSwitch to a random wallpaper and regenerate all theme colors
SUPER + EOpen file manager (dolphin)SUPER + BOpen web browser (firefox)
SUPER + QClose active windowSUPER + VToggle floating / tiled window state
SUPER + PToggle pseudo-tiling (Dwindle)SUPER + S / SUPER + Shift + SToggle / move active window to special workspace (magic)
SUPER + 1–0Switch to workspace (1–10)
SUPER + Shift + 1–0Move active window to workspace (1–10)
SUPER + Arrow KeysMove focus between windows
SUPER + MExit Hyprland session4. Directory Structure (~/.config/)Plaintext~/.config/

├── hypr/
│   ├── hyprland.lua            # Main config, environment variables, and autostart
│   ├── hyprlock.conf           # Lockscreen configuration
│   ├── lua/
│   │   ├── colors.lua          # Matugen-generated window border colors
│   │   ├── keybinds.lua        # Keybindings
│   │   ├── monitors.lua        # Monitor layout and VRR configuration
│   │   ├── options.lua         # Borders, rounding (10px), blur, and animations
│   │   └── rules.lua           # Workspace and window rules
│   └── scripts/
│       ├── monitor_reload.sh   # Display hotplug / reload handler
│       ├── theme-switch.sh     # Automated wallpaper and color palette switcher
│       └── utility-menu.sh     # Rofi-based theme and system utility menu
├── matugen/
│   ├── config.toml             # Matugen targets (Hyprland, Waybar, Rofi, Kitty, GTK, Qt6, Kate)
│   └── templates/              # Color templates for all integrated applications
├── waybar/                     # Top bar modules (config.jsonc) and styling (style.css)
├── rofi/                       # Launcher and utility menu theme (config.rasi)
├── kitty/                      # Terminal configuration (kitty.conf)
├── gtk-3.0/ & gtk-4.0/         # Auto-updated GTK / Libadwaita color definitions
└── qt6ct/ & qt5ct/             # Qt6 / Qt5 Breeze settings and Matugen color palette
