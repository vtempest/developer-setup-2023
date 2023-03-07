#setup

alias setup="sudo apt update; sudo apt -y upgrade; \
  sudo apt install -y fish git bind9-host wget  rsync; \
  wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash ; nvm install 19 \
  git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime; sh ~/.vim_runtime/install_awesome_vimrc.sh; \
   curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish; \
  sudo rm  /etc/motd; sudo rm -rf  /etc/update-motd.d; touch ~/.hushlogin; "
  
  #git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf; ~/.fzf/install "

# sudo su
alias setup_sudo="sudo usermod -aG sudo $USER; echo 'sudo visudo /etc/sudoers; $USER ALL=(ALL) NOPASSWD:ALL' "

alias setup_ssh="sed -re 's/^(PasswordAuthentication)([[:space:]]+)no/\1\2yes/' -i.`date -I` /etc/ssh/sshd_config; sudo service ssh restart;"

alias setup_docker="curl -fsSL https://test.docker.com -o test-docker.sh; sh test-docker.sh"
 
alias setup_git="git config --global user.name 'user';
  git config --global user.email 'user@example.com';
  ssh-keygen;
  cat ~/.ssh/id_rsa.pub;
  echo 'https://github.com/settings/ssh';"


alias setup_node="curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - ; sudo apt-get install -y nodejs"

#commands
alias gg="git add --all . ; git commit -a -m '.' ; git push -u -f origin master;"

 alias e="vim"

alias sync_with_remote_folder="rsync -azP -h --delete --exclude-from=.gitignore . " #user@host.com:~/folder

alias i="sudo apt install -y"
alias un="sudo apt remove -y"
alias apps="apt list --installed | cut -d "/" -f1 | sed -z 's/\n/ /g'"
alias list_installed="sudo apt install -y aptitude; aptitude search '~i!~M'"
alias diskspace="sudo du -cks * | sort -rn | head -11"

#process/port
alias process_find="sudo ps aux | grep "
alias process_kill="sudo killall -9 "
alias port_find="lsof -i tcp:"
alias port_kill="sudo lsof -t -i tcp:($1) | xargs kill -9"
