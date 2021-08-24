##update and upgrade

sudo apt update && sudo apt upgrade -y \
&& \
##install apps from apt
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

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install -y code
sudo apt update && sudo apt upgrade -y 
