# View and set wallpaper with feh
alias feh-view="feh --scale-down --auto-zoom"
alias feh-set="feh --bg-fill"

# Refresh font cache
alias font-refresh="fc-cache -fv"

# download mp3 from youtube
alias ytmp3="youtube-dl --extract-audio --audio-format mp3"

alias gor="go run"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias fuck="sudo !!"

alias tree="tree -A"
alias treed="tree -d"
alias tree1="tree -d -L 1"
alias tree2="tree -d -L 2"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias exe='sudo chmod +x'

# make `less` not clear the screen upon exit
alias less='less -X'

alias home='cd ~'

alias append="echo '$1' | sudo tee -a '$2'"

alias glg='git log --graph --pretty=format":%C(yellow)%h%Cblue%d%Creset %s %C(white) %an,%ar%Creset" --abbrev-commit --decorate'
alias glgh='git log --graph --pretty=format":%C(yellow)%h%Cblue%d%Creset %s %C(white) %an,%ar%Creset" --abbrev-commit --decorate | head'
alias glo='git log --oneline --decorate'
alias gloh='git log --oneline --decorate | head'

