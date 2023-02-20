ZDOTDIR=~/.config/zsh

if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
	exec startx
fi

# [ -f ~/.config/lf/LF_ICONS ] && {
#	LF_ICONS="$(tr '\n' ':' <~/.config/lf/LF_ICONS)" \
#		&& export LF_ICONS
# }

export LF_COLORS="\
~/Documents=01;31:\
~/Downloads=01;31:\
~/.local/share=01;31:\
~/.config/lf/lfrc=31:\
.git/=01;32:\
.git*=32:\
*.gitignore=32:\
*Makefile=32:\
README.*=33:\
*.txt=34:\
*.md=34:\
ln=01;36:\
di=01;34:\
ex=01;32:\
"
