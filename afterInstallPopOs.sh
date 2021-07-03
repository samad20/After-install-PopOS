#......................................................................................
#update & upgrade system
#......................................................................................

sudo apt-get update \
sudo apt-get upgrade -y \

#......................................................................................
# dev & system tools
#......................................................................................

sudo apt install build-essential -y	\
sudo apt install gnome-tweaks -y \
sudo apt install -y caffeine \
sudo apt install -y openconnect network-manager-openconnect network-manager-openconnect-gnome	\
sudo apt install -y openvpn network-manager-openvpn network-manager-openvpn-gnome	\
sudo apt install -y default-jre default-jdk	\
sudo apt install ubuntu-restricted-extras -y	\
sudo apt install neofetch -y	\

#......................................................................................
#Saving Power on Laptop ( uncomment following command if you using a laptop

#git clone https://github.com/AdnanHodzic/auto-cpufreq.git	\
#cd auto-cpufreq && sudo ./auto-cpufreq-installer	\
#cd \

#......................................................................................


#......................................................................................
#programms
#......................................................................................

#vscode
sudo apt install -y code \

#Brave
sudo apt install apt-transport-https curl	\
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https:#brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg	\
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https:#brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list	\
sudo apt update	\
sudo apt install brave-browser -y	\

#VLC
sudo apt install -y vlc \


#Discord
wget https:#dl.discordapp.net/apps/linux/0.0.15/discord-0.0.15.deb	\
sudo dpkg -i discord-0.0.15.deb	\
sudo apt-get -f install	\

#......................................................................................
#Icons & Themes
#......................................................................................

#papirus icons
sudo add-apt-repository ppa:papirus/papirus	\
sudo apt-get update	\
sudo apt-get install papirus-icon-theme	\

#Enable ‘Shell theme’ in Gnome Tweak Tool
sudo apt install -y chrome-gnome-shell	\

#......................................................................................
sudo apt-get update