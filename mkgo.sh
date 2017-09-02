#!/bin/bash

mk_go() {
cd ~
touch .profile
touch .go
cd .go
touch bin
cd ~
echo "GOPATH=$HOME/.go" >> .profile # gopath
echo "GOROOT=$GOPATH/bin" >> .profile # goroot
echo "source .profile" >> .bashrc
}

mk_go
