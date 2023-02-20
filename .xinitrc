xrandr --output VGA1 --auto --right-of LVDS1

xcompmgr -c &
slstatus &
sxhkd &
xmodmap ~/.Xmodmap
feh --bg-fill "$(find ~/Wallpapers -type f | shuf -n 1)"

exec dwm
