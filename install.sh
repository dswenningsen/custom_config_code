#! /bin/bash

apt-get install unzip
apt-get install fontconfig

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl -s https://ohmyposh.dev/install.sh | bash -s
wget  https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/CascadiaCode.zip
cp CascadiaCode.zip /usr/share/fonts/
echo "Done copying to /usr/share/fonts"
unzip /usr/share/fonts/CascadiaCode.zip
rm /usr/share/fonts/CascadiaCode.zip
fc-cache -fv
fc-cache -r
cp .mytheme.omp.json ~/


cp shell_stuff/.bash* $HOME/
cp shell_stuff/.bash* /root/

cp msfconsole_stuff/msfconsole.rc $HOME/
cp msfconsole_stuff/msfconsole.rc /root/

cp tmux_stuff/.tmux.conf $HOME/
cp tmux_stuff/.tmux.conf /root/

cp z/z.sh /bin/

cp vim_stuff/.vim* $HOME/
cp vim_stuff/.vim* /root/
