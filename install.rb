#!/usr/bin/env ruby

ArchPackages = [
  "emacs",
  "xterm",
  "xclip",
  "screen",
  "nerd-fonts-git",
  "scrot",
  "feh",
  "keepassx2",
  "dunst",
  "i3lock",
  "i3-gaps-git",
  "i3status-git",
  "network-manager-applet",
  "imagemagick",
  "compton-git",
  "thunar",
  "thunar-archive-plugin",
  "file-roller",
  "tumbler",
  "zathura",
  "zathura-pdf-mupdf",
  "zathura-cb",
  "zathura-ps",
  "zathura-djvu",
  "rofi-git",
  "openssh",
  "arandr",
  "youtube-dl",
  "ranger",
  "w3m",
  "vtop",
  "bluez",
  "bluez-utils",
  "pulseaudio-bluetooth",
  "blueman",
  "pulseaudio",
  "pavucontrol",
  "redshift",
  "firefox",
  "ttf-symbola",
  "glances",
  "neovim",
  "python-neovim",
  "python2-neovim",
  "ffmpeg",
  "mpv",
  "rainbowstream",
  "telegram-cli-git",
  "zsh",
  "connman",
  "wpa_supplicant",
  "weechat",
]

install() {
`pacaur -Syu --noconfirm --noedit`
}

git_setup {
`git config --global user.name "Gazaunga"`
`git config --global user.email "jeremy.ottley@gmail.com"`
`git config --global core.autocrlf input`
`git config --global core.safecrlf true`
puts "git config set up!"
}

space_vim {
`cd ~`
`curl -sLf https://spacevim.org/install.sh | bash`
}

space_nano {
`cd ~`
`curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh`
}

space_prompt {
`cd ~`
`git clone https://github.com/nojhan/liquidprompt.git`
`source liquidprompt/liquidprompt`
`echo "source ~/liquidprompt/liquidprompt" >> .bashrc`
}

space_emacs {
`cd ~`
`git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d`
`wget https://raw.githubusercontent.com/Gazaunga/SpaceOS/master/.spacemacs`
}

ArchPackages.each do |i|
install i
end

git_setup
space_vim
space_nano
space_prompt
space_emacs

