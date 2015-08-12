#exec openbox-session
xrdb -merge ~/.Xresources &
xrandr --dpi 96 &
xset r rate 200 30
#xsetroot -solid '#000000' &
#xsetroot -solid '#ffffff' &
#hsetroot -solid '#000000' &
feh --bg-scale /mnt/Shared/Pictures/Wallpapers/wallpaper-464376.jpg &
#xcompmgr -cfF -t-9 -l-11 -r9 -o.95 -D6 &
xcompmgr &
exec i3

