 sudo apt-get update
 sudo apt-get upgrade -y
 sudo apt-get install -y build-essential zlib1g zlib1g-dev libxml2 libxml2-dev libxslt-dev locate libreadline6-dev libcurl4-openssl-dev git-core autoconf curl postgresql postgresql-contrib libpq-dev libapr1 libaprutil1 libsvn1 libpcap-dev python3 pip curl neovim
 cd /usr/share
 sudo snap install metasploit-framework
 sudo git clone https://github.com/rapid7/metasploit-framework.git
 cd metasploit-framework
 sudo bash -c 'for MSF in $(ls msf*); do ln -s /usr/local/src/metasploit-framework/$MSF /usr/local/bin/$MSF;done'
 sudo service postgresql start
 msfdb init
 cd ~
 pip install shodan
 sudo apt-get update
 sudo apt-get upgrade -y
 curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 curl -fLo ~/.config/nvim/init.vim --create-dirs     https://raw.githubusercontent.com/lungless-chest/neovim-plug/main/init.vim
 curl -fsSL https://deb.nodesource.com/setup_21.x | sudo -E bash - &&\
 sleep 1
 sudo apt-get -y install nodejs
 sudo apt-get update
 sudo apt-get upgrade -y
 curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
 sudo apt-get install -y fzf
 echo "export PATH=/home/$USER/.local/bin:\$PATH" >> ~/.bashrc
 echo 'eval "$(zoxide init --cmd cd bash)"' >> ~/.bashrc
 source ~/.bashrc
 exec bash
 
