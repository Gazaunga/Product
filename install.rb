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

ArchPackages.each do |i|
install i
end
