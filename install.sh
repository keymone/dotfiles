if [ -d ~/.dotfiles ]
then
  cd ~/.dotfiles
  echo "\033[0;34mUpdating ...dotfiles...\033[0m"
  /usr/bin/env git pull
else
  echo "\033[0;34mCloning ...dotfiles...\033[0m"
  /usr/bin/env git clone https://github.com/keymone/dotfiles.git ~/.dotfiles
  cd ~/.dotfiles
fi

find . -name .\* -type f -exec cp {} ../ \;
echo "\033[0;34mDone.\033[0m"
