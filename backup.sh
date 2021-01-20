# this script will backup config files from pc to this repo

clear

# vimrc
if [ -e /home/mabroordev/.vimrc ];then
  echo "vimrc found...."
  clear
  cp /home/mabroordev/.vimrc /home/mabroordev/dotfiles/.config/
  echo ".vimrc backup done [success]"
  sleep 1
else
  echo "vimrc not found!"
  sleep 1
fi

#Snippets
if [ -d /home/mabroordev/.vim/snippets ];then
  echo "vim snippets found...."
  clear
  cp -r /home/mabroordev/.vim/snippets /home/mabroordev/dotfiles/.config/
  echo "vim snippets backup done [success]"
  sleep 1
else
  echo "vim snippets not found!"
  sleep 1
fi

# i3 config
if [ -e /home/mabroordev/.config/i3/config ];then
  echo "i3 config found...."
  clear
  cp /home/mabroordev/.config/i3/config /home/mabroordev/dotfiles/.config/i3
  echo "i3 config backup done [success]"
  sleep 1
else
  echo "i3 config not found!"
  sleep 1
fi

git add .
git commit -m 'backed up configuration'
git push -u origin master
