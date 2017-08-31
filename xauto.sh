cd ~
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
wget https://raw.githubusercontent.com/Gazaunga/SpaceOS/master/.spacemacs
touch .bash_profile
cat > .bash_profile <<- "EOF"
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
EOF
