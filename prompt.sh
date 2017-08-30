# Fancy
e_underline "Some fancy terminal sugar"
curl -sLf https://spacevim.org/install.sh | bash
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
cd ~
git clone https://github.com/nojhan/liquidprompt.git
source liquidprompt/liquidprompt
echo "[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt" >> .bashrc
