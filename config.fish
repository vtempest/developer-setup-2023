alias e="vim"
alias i="sudo apt install -y"

alias setup_sudo="sudo usermod -aG sudo $USER;\
 sudo echo '$USER ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers"



alias setup_ssh="sed -re 's/^(PasswordAuthentication)([[:space:]]+)no/\1\2yes/' -i.`date -I` /etc/ssh/sshd_config"


alias setup_apt="sudo apt update; sudo apt -y upgrade; \
  sudo apt install -y fish git gh nodejs rsync"


alias setup_docker="sudo mkdir -p /etc/apt/keyrings; \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg; \
sudo echo 'deb [arch=(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu (lsb_release -cs) stable'| sudo tee /etc/apt/sources.list.d/docker.list > /dev/null; \
 sudo apt-get update; sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-compose"
 

alias setup_vim="git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime;
  sh ~/.vim_runtime/install_awesome_vimrc.sh;
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf; 
  ~/.fzf/install | yes;
  "