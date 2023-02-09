#setup

alias setup="sudo apt update; sudo apt -y upgrade; \
  sudo apt install -y fish git gh nodejs npm  rsync; \
  git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime; sh ~/.vim_runtime/install_awesome_vimrc.sh; \
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf; 
  ~/.fzf/install | yes; curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish; \
  sudo rm  /etc/motd; sudo rm -rf  /etc/update-motd.d; touch ~/.hushlogin;
  chsh; "

# sudo su
alias setup_sudo="sudo usermod -aG sudo $USER;\
 sudo echo '$USER ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers"

alias setup_ssh="sed -re 's/^(PasswordAuthentication)([[:space:]]+)no/\1\2yes/' -i.`date -I` /etc/ssh/sshd_config; sudo service ssh restart;"

alias setup_docker="sudo mkdir -p /etc/apt/keyrings; \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg; \
sudo echo 'deb [arch=(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu (lsb_release -cs) stable'| sudo tee /etc/apt/sources.list.d/docker.list > /dev/null; \
 sudo apt-get update; sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-compose"
 
alias setup_git="git config --global user.name 'user';
  git config --global user.email 'user@example.com';
  ssh-keygen;
  cat ~/.ssh/id_rsa.pub;
  echo 'https://github.com/settings/ssh';"



#commands
alias gg="git add --all . ; git commit -a -m '.' ; git push -u -f origin master;"

 alias e="vim"

alias sync_with_remote_folder="rsync -azP -h --delete --exclude-from=.gitignore . " #user@host.com:~/folder

alias i="sudo apt install -y"
alias un="sudo apt remove -y"

alias list_installed="sudo apt install -y aptitude; aptitude search '~i!~M'"
alias diskspace="sudo du -cks * | sort -rn | head -11"

#process/port
alias process_find="sudo ps aux | grep "
alias process_kill="sudo killall -9 "
alias port_find="lsof -i tcp:"
alias port_kill="sudo lsof -t -i tcp:($1) | xargs kill -9"
