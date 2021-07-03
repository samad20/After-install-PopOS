//......................................................................................
//update & upgrade system
//......................................................................................

sudo apt-get update \
sudo apt-get upgrade -y \

//......................................................................................
// dev & system tools
//......................................................................................

sudo apt install build-essential -y	\
sudo apt install gnome-tweaks -y \
sudo apt install -y caffeine \
sudo apt install -y openconnect network-manager-openconnect network-manager-openconnect-gnome	\
sudo apt install -y openvpn network-manager-openvpn network-manager-openvpn-gnome	\
sudo apt install -y default-jre default-jdk	\
sudo apt install ubuntu-restricted-extras -y	\

//......................................................................................
//programms
//......................................................................................

//vscode
sudo apt install -y code \

//Brave
sudo apt install apt-transport-https curl	\
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg	\
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list	\
sudo apt update	\
sudo apt install brave-browser -y	\

//VLC
sudo apt install -y vlc \

//neofetch
sudo apt install neofetch -y	\

//......................................................................................
Icons & Themes
//......................................................................................

//papirus icons
sudo add-apt-repository ppa:papirus/papirus	\
sudo apt-get update	\
sudo apt-get install papirus-icon-theme	\

//......................................................................................
sudo apt-get update	\
sudo reboot