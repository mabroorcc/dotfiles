# this script will backup config files from pc to this repo

clear

# vimrc
#if [ -e /home/mabroordev/.vimrc ];then
  #echo "vimrc found...."
  #clear
  #cp /home/mabroordev/.vimrc /home/mabroordev/dotfiles/.config/
  #echo ".vimrc backup done [success]"
#else
  #echo "vimrc not found!"
#fi

#Snippets
#if [ -d /home/mabroordev/.vim/snippets ];then
  #echo "vim snippets found...."
  #clear
  #cp -r /home/mabroordev/.vim/snippets /home/mabroordev/dotfiles/.config/
  #echo "vim snippets backup done [success]"
#else
  #echo "vim snippets not found!"
#fi

# i3 config
#if [ -e /home/mabroordev/.config/i3/config ];then
  #echo "i3 config found...."
  #clear
  #cp /home/mabroordev/.config/i3/config /home/mabroordev/dotfiles/.config/i3
  #echo "i3 config backup done [success]"
#else
  #echo "i3 config not found!"
#fi

git add .
git commit -m 'backed up configuration'
git push -u origin master
