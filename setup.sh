wget -O ~/.bash_aliases https://raw.githubusercontent.com/muellerzr/dotfiles/master/.bash_aliases
source ~/.bash_aliases

[[ -z $NAME  ]] && read -e -p "Enter your name (for git configuration): " NAME
[[ -z $EMAIL ]] && read -e -p "Enter your email (for git configuration): " EMAIL
[[ $NAME  ]] && git config --global user.name "$NAME"
[[ $EMAIL ]] && git config --global user.email "$EMAIL"
git config --global credential.helper store