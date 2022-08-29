# bash-completion
sudo apt-get update; sudo apt-get install bash-completion

wget -O ~/.complete_alias https://raw.githubusercontent.com/cykerway/complete-alias/master/complete_alias
echo ". ~/.complete_alias" >> ~/.bash_completion

# Bash aliases
wget -O ~/.bash_aliases https://raw.githubusercontent.com/muellerzr/dotfiles/master/.bash_aliases
source ~/.bash_aliases

source ~/.complete_alias

[[ -z $NAME  ]] && read -e -p "Enter your name (for git configuration): " NAME
[[ -z $EMAIL ]] && read -e -p "Enter your email (for git configuration): " EMAIL
[[ $NAME  ]] && git config --global user.name "$NAME"
[[ $EMAIL ]] && git config --global user.email "$EMAIL"
git config --global credential.helper store