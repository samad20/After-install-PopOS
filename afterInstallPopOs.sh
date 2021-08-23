sudo apt update && sudo apt upgrade -y \
&& \
sudo apt install -y \
build-essential \
gnome-tweaks \
default-jre \
default-jdk \
neofetch \
ubuntu-restricted-extras \
vlc \
gdebi-core wget \
&& \
sudo apt update \
&& \
sudo apt -y install curl software-properties-common apt-transport-https  \
&& \
sudo curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - 

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list \ 

sudo apt update \
&& \
sudo apt install brave-browser -y \
&& \
sudo add-apt-repository ppa:papirus/papirus \
&& \
sudo apt-get update \
&& \
sudo apt-get install -y papirus-icon-theme \
&& \
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb" \
&& \
sudo gdebi ~/discord.deb \
&& \
sudo apt install -y software-properties-common apt-transport-https wget \
&& \
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - \
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" \
&& \
sudo apt update\
&& \
sudo apt install -y code \ 

sudo apt update && sudo apt upgrade -y \

&& \
sudo apt update && sudo apt upgrade -y
