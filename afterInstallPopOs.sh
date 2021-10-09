#! /bin/bash
echo ""
echo "Welcome to After Install Pop_OS! script"

echo 

echo "List:"
echo
echo "1. Update and upgrade"
echo "2. Important packages"
echo "3. Apps"
echo "4. Exit"

echo ""
echo -n "Enter a naumber from the list: "
read choice
echo ""
case $choice in

  1)
    echo "update & upgrade Starting now...."
    sudo apt update
    sudo apt upgrade -y 
    ;;

  2)
    echo "chose which package you want by typing number"
    echo "1. build-essential"
    echo "2. gnome-tweaks"
    echo "3. neofetch"
    echo "4. ubuntu-restricted-extras"
    echo "5. gdebi-core"
    echo "6. git"
    echo "7. default-jre & default-jdk"
    echo "8. python3 and pip"
    echo "9. all"
    echo -n "Enter a naumber: "
    read choice2
    echo
    
    if [[ $choice2 -eq 1 ]]
    then
      echo "Installing build-essential...."
      sudo apt install -y build-essential
    fi 

    if [[ $choice2 -eq 2 ]]
    then
      echo "Installing gnome-tweaks...."
      sudo apt install -y gnome-tweaks
    fi 

    if [[ $choice2 -eq 3 ]]
    then
      echo "Installing neofetch...."
      sudo apt install -y neofetch
    fi 
    
    if [[ $choice2 -eq 4 ]]
    then
      echo "Installing ubuntu-restricted-extras...."
      sudo apt install -y ubuntu-restricted-extras
    fi 
    
    if [[ $choice2 -eq 5 ]]
    then
      echo "Installing gdebi-core...."
      sudo apt install -y gdebi-core
    fi 
    
    if [[ $choice2 -eq 6 ]]
    then
      echo "Installing git...."
      sudo apt install -y git
    fi 

    if [[ $choice2 -eq 7 ]]
    then
      echo "Installing default-jre & default-jdk...."
      sudo apt install -y default-jre default-jdk 
    fi 

    if [[ $choice2 -eq 8 ]]
    then
      echo "Installing python3 and pip...."
      sudo apt install -y python3 python3-pip
    fi 

    if [[ $choice2 -eq 9 ]]
    then
      echo "Installing all...."
      sudo apt install -y build-essential gnome-tweaks neofetch ubuntu-restricted-extras gdebi-core git default-jre default-jdk python3 python3-pip
    fi 

    if [[ $choice2 -gt 9 ]] || [[ $choice2 -lt 1 ]]
    then
      echo "Invalid number !"
    fi

    ;;

  3)
    echo "chose which apps you want by typing number"
    echo "1. Atom"
    echo "2. Audacity"
    echo "3. Brave"
    echo "4. Chromium-browser"
    echo "5. Discord"
    echo "6. Gimp"
    echo "7. papirus icons"
    echo "8. Shortcut"
    echo "9. Skype"
    echo "10. Steam"
    echo "11. Sublime"
    echo "12. Timeshift"
    echo "13. Vim"
    echo "14. VirtualBox"
    echo "15. Visual Studio Code"
    echo "16. vlc"
    echo -n "Enter a naumber: "
    read choice3

    if [[ $choice3 -eq  1 ]]
    then
      echo "Installing Atom...."
      sudo add-apt-repository ppa:webupd8team/atom
      sudo apt-get update
      sudo apt-get install -y atom 
    fi 

    if [[ $choice3 -eq  2 ]]
    then
      echo "Installing Audacity...."
      sudo add-apt-repository ppa:ubuntuhandbook1/audacity
      sudo apt update
      sudo apt install -y audacity
    fi

    if [[ $choice3 -eq  3 ]]
    then
      echo "Installing Brave...."
      sudo apt install apt-transport-https curl
      sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
      echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
      sudo apt update
      sudo apt install -y brave-browser
    fi

    if [[ $choice3 -eq  4 ]]
    then
      echo "Installing Chromium-browser...."
      sudo apt install -y chromium 
    fi

    if [[ $choice3 -eq  5 ]]
    then
      echo "Installing Discord...."
      sudo apt install -y gdebi-core
      wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb" \
      sudo gdebi ~/discord.deb
    fi

    if [[ $choice3 -eq  6 ]]
    then
      echo "Installing Gimp...."
      sudo add-apt-repository ppa:ubuntuhandbook1/gimp
      sudo apt update
      sudo apt -y install gimp 
    fi

    if [[ $choice3 -eq  7 ]]
    then
      echo "Installing papirus icons...."
      sudo add-apt-repository ppa:papirus/papirus
      sudo apt-get update 
      sudo apt-get install -y papirus-icon-theme
    fi

    if [[ $choice3 -eq  8 ]]
    then
      echo "Installing Shortcut...."
      sudo snap install shotcut --classic 
    fi

    if [[ $choice3 -eq  9 ]]
    then
      echo "Installing Skype...."
      wget https://go.skype.com/skypeforlinux-64.deb
      sudo apt install ./skypeforlinux-64.deb
    fi

    if [[ $choice3 -eq  10 ]]
    then
      echo "Installing Steam...."
      sudo apt install -y steam-installer
 
    fi

    if [[ $choice3 -eq  11 ]]
    then
      echo "Installing Sublime...."
      sudo apt update
      sudo apt install apt-transport-https ca-certificates curl software-properties-common
      curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
      sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
      sudo apt update
      sudo apt install -y sublime-text
    fi

    if [[ $choice3 -eq  12 ]]
    then
      echo "Installing Timeshift...."
      sudo add-apt-repository -y ppa:teejee2008/ppa
      sudo apt update
      sudo apt install -y timeshift
    fi

    if [[ $choice3 -eq  13 ]]
    then
      echo "Installing Vim...."
      sudo apt install -y vim 
    fi

    if [[ $choice3 -eq  14 ]]
    then
      echo "Installing VirtualBox...."
      sudo apt install -y virtualbox
    fi

    if [[ $choice3 -eq  15 ]]
    then
      echo "Installing Visual Studio Code...."
      wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
      sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
      sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
      rm -f packages.microsoft.gpg 
    fi

    if [[ $choice3 -eq  16 ]]
    then
      echo "Installing vlc...."
      sudo apt install -y vlc 
    fi
    
    if [[ $choice3 -gt 16 ]] || [[ $choice3 -lt 1 ]]
    then
      echo "Invalid number !"
    fi
    
    ;;

  4)
  echo "Goodbye !"
  ;;
  *)
    echo "please enter a number !"
    ;;
esac