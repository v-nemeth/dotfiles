if ! which "zsh" ; then
  sudo apt install zsh -y
else
  echo zsh already installed
fi

if ! which "mc" ; then
  sudo apt install mc -y
else
  echo mc already installed
fi

if ! which "htop" ; then
  sudo apt install htop -y
else
  echo htop already installed
fi

if ! which "neofetch" ; then
  sudo apt install neofetch -y
else
  echo neofetch already installed
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
