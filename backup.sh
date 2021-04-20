# this script will backup config files from pc to this repo

clear

# vimrc
if [ -e ~/.vimrc ];then
  echo "vimrc found...."
  clear
  cp ~/.vimrc ~/dotfiles/.config/
  echo ".vimrc backup done [success]"
  sleep 1
else
  echo "vimrc not found!"
  sleep 1
fi

#Snippets
if [ -d ~/.vim/snippets ];then
  echo "vim snippets found...."
  clear
  cp -r ~/.vim/snippets ~/dotfiles/.config/
  echo "vim snippets backup done [success]"
  sleep 1
else
  echo "vim snippets not found!"
  sleep 1
fi

# i3 config
if [ -e ~/.i3 ];then
  echo "i3 config found...."
  clear
  cp -r ~/.i3 ~/dotfiles/.config/i3
  echo "i3 config backup done [success]"
  sleep 1
else
  echo "i3 config not found!"
  sleep 1
fi

git add .
git commit -m 'backed up configuration'
git push -u origin master
