# Hyprland Dynamic Theme & Dotfiles (Arch Linux)

Modulaarinen, Lua-pohjainen Hyprland-työpöytäympäristö, jossa koko työpöydän väripaletti (ikkunareunukset, Waybar, Rofi, Kitty, SwayNC, Nautilus/GTK ja Dolphin/Kate/Qt6) mukautuu automaattisesti aktiiviseen taustakuvaan tai valittuun pikateemaan lennossa.

## Ominaisuudet

* **Dynaaminen väripaletti (`matugen`):** Poimii päävärit taustakuvasta ja päivittää koko työpöydän värit alle sekunnissa ilman istunnon uudelleenkäynnistystä.
* **Sulava taustakuvamoottori (`awww`):** 144 Hz:n animaatiolla varustettu taustakuvan vaihto suoraan yläpalkista tai pikanäppäimellä.
* **Kelluva Waybar & kalenteri:** Kellon klikkaus vaihtaa päivämäärämuodon, ja kursori avaa kuukausikalenterin. Yläoikealla pikapainikkeet taustakuvalle ja työkaluvalikolle.
* **Rofi-työkaluvalikko (`utility-menu.sh`):** Yhdistetty valikko taustakuvien valintaan, valmiisiin väriteemoihin (Catppuccin Mocha Pink, Tokyo Night, Gruvbox), ääni-/näyttöasetuksiin sekä virranhallintaan (lukitus, lepotila, uudelleenkäynnistys, sammutus).
* **Yhtenäinen GTK- ja Qt6-teemoitus:** Nautilus (GTK3/GTK4) sekä Dolphin ja Kate (Qt6/Breeze/KTextEditor) noudattavat automaattisesti samaa dynaamista väripalettia.

---

## 1. Vaaditut paketit (Arch Linux)

Asenna kaikki tarvittavat paketit yhdellä `pacman`-komennolla:

```bash
sudo pacman -S --needed \
  hyprland hyprlock hypridle hyprshot slurp uwsm xdg-desktop-portal-hyprland \
  waybar rofi awww matugen swaync libnotify \
  kitty dolphin kate nautilus breeze breeze-icons qt6ct qt5ct nwg-look nwg-displays \
  pipewire wireplumber pipewire-pulse pavucontrol brightnessctl \
  networkmanager network-manager-applet bluez bluez-utils blueman \
  polkit-kde-agent archlinux-xdg-menu ttf-jetbrains-mono-nerd otf-font-awesome fastfetch
