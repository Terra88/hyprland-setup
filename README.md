Hyprland Dynamic Theme & Dotfiles (Arch Linux)

Modulaarinen, Lua-pohjainen Hyprland-työpöytäympäristö, jossa koko työpöydän väripaletti (ikkunareunukset, Waybar, Rofi, Kitty, SwayNC, Nautilus/GTK ja Dolphin/Kate/Qt6) mukautuu automaattisesti aktiiviseen taustakuvaan tai valittuun pikateemaan lennossa.

Ominaisuudet

Dynaaminen väripaletti (matugen): Poimii päävärit taustakuvasta ja päivittää koko työpöydän värit alle sekunnissa ilman istunnon uudelleenkäynnistystä.
Sulava taustakuvamoottori (awww): 144 Hz:n animaatiolla varustettu taustakuvan vaihto suoraan yläpalkista tai pikanäppäimellä.
Kelluva Waybar & kalenteri: Kellon klikkaus vaihtaa päivämäärämuodon, ja kursori avaa kuukausikalenterin. Yläoikealla pikapainikkeet taustakuvalle ja työkaluvalikolle.
Rofi-työkaluvalikko (utility-menu.sh): Yhdistetty valikko taustakuvien valintaan, valmiisiin väriteemoihin (Catppuccin Mocha Pink, Tokyo Night, Gruvbox), ääni-/näyttöasetuksiin sekä virranhallintaan (lukitus, lepotila, uudelleenkäynnistys, sammutus).
Yhtenäinen GTK- ja Qt6-teemoitus: Nautilus (GTK3/GTK4) sekä Dolphin ja Kate (Qt6/Breeze/KTextEditor) noudattavat automaattisesti samaa dynaamista väripalettia.

1. Vaaditut paketit (Arch Linux)
Asenna kaikki tarvittavat paketit yhdellä pacman-komennolla:

sudo pacman -S --needed \
  hyprland hyprlock hypridle hyprshot slurp uwsm xdg-desktop-portal-hyprland \
  waybar rofi awww matugen swaync libnotify \
  kitty dolphin kate nautilus breeze breeze-icons qt6ct qt5ct nwg-look nwg-displays \
  pipewire wireplumber pipewire-pulse pavucontrol brightnessctl \
  networkmanager network-manager-applet bluez bluez-utils blueman \
  polkit-kde-agent archlinux-xdg-menu ttf-jetbrains-mono-nerd otf-font-awesome fastfetch

2. Asennus ja käyttöönotto
Pura asetukset ja taustakuvat kotihakemistoosi:

unzip config.zip -d ~/.config/
unzip wallpaper.zip -d ~/
chmod +x ~/.config/hypr/scripts/*.sh

(Varmista, että taustakuvat sijaitsevat polussa ~/wallpaper/nature-culture/ ja lukitusruudun kuva polussa ~/wallpaper/lock.jpg.)

Luo KDE- ja Kate-teemojen hakemistot ja linkitä dynaaminen paletti:

mkdir -p ~/.local/share/color-schemes ~/.local/share/org.kde.syntax-highlighting/themes
ln -sf ~/.config/kdeglobals ~/.local/share/color-schemes/Matugen.colors

Alusta kaikki väritiedostot ensimmäisen kerran:

matugen image ~/wallpaper/nature-culture/wp1.jpg --source-color-index 0

Aktivoi teema Katessa (kertaluonteinen asetus):
Avaa Kate ja valitse Asetukset → Määritä Kate… → Väriteemat → Oletusteema: Matugen.
Valitse myös Asetukset → Ikkunan väriteema → Matugen.
Kirjaudu sisään Hyprlandiin:
Valitse kirjautumisruudulta (esim. GDM) istunnoksi Hyprland (uwsm-managed) ja kirjaudu sisään.

3. Pikanäppäimet

SUPER + Return: Avaa pääte (kitty)
SUPER + R: Avaa sovellusvalikko (rofi)
SUPER + U: Avaa työkalu-, teema- ja virranhallintavalikko (utility-menu.sh)
SUPER + Shift + W: Vaihda satunnainen taustakuva ja päivitä koko työpöydän väriteema
SUPER + E: Avaa tiedostonhallinta (dolphin)
SUPER + B: Avaa selain (firefox)
SUPER + Q: Sulje aktiivinen ikkuna
SUPER + V: Vaihda ikkuna kelluvaksi / ruudukoiduksi
SUPER + P: Pseudo-tilan vaihto (Dwindle)
SUPER + S / SUPER + Shift + S: Avaa / siirrä ikkuna piilotyötilaan (magic)
SUPER + 1–0: Vaihda työtilaa (1–10)
SUPER + Shift + 1–0: Siirrä aktiivinen ikkuna työtilaan (1–10)
SUPER + Nuolinäppäimet: Siirrä kohdistusta ikkunoiden välillä
SUPER + M: Kirjaudu ulos istunnosta


4. Hakemistorakenne (~/.config/)

~/.config/
├── hypr/
│   ├── hyprland.lua            # Pääasetus, ympäristömuuttujat ja autostart
│   ├── hyprlock.conf           # Lukitusruudun ulkoasu
│   ├── lua/
│   │   ├── colors.lua          # Matugenin generoimat ikkunareunusten värit
│   │   ├── keybinds.lua        # Pikanäppäimet
│   │   ├── monitors.lua        # Näyttöasetukset ja VRR
│   │   ├── options.lua         # Reunukset, pyöristykset (10px), sumennus ja animaatiot
│   │   └── rules.lua           # Työtila- ja ikkunasäännöt
│   └── scripts/
│       ├── monitor_reload.sh   # Näyttöjen uudelleenlataus
│       ├── theme-switch.sh     # Taustakuvan ja väripaletin automaattinen vaihto
│       └── utility-menu.sh     # Rofi-pohjainen teema- ja työkaluvalikko
├── matugen/
│   ├── config.toml             # Matugen-kohteet (Hyprland, Waybar, Rofi, Kitty, GTK, Qt6, Kate)
│   └── templates/              # Väripohjat kaikille sovelluksille
├── waybar/                     # Yläpalkin moduulit (config.jsonc) ja tyylit (style.css)
├── rofi/                       # Sovellus- ja työkaluvalikon teema (config.rasi)
├── kitty/                      # Päätteen asetukset (kitty.conf)
├── gtk-3.0/ & gtk-4.0/         # Automaattisesti päivittyvät GTK/Libadwaita-värit
└── qt6ct/ & qt5ct/             # Qt6/Qt5 Breeze-asetukset ja Matugen-väripaletti

