---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
terminal      = "kitty"
fileManager   = "nemo"
menu          = "pkill rofi || .config/rofi/launcher.sh"
refresh       = "~/.config/waybar/scripts/launch.sh && hyprctl reload"
screenshot    = "grim -g \"$(slurp)\" - | satty --action-on-enter save-to-file --filename - --output-filename ~/Pictures/Screenshots/$(date '+%d-%m-%y-%H:%M').png"