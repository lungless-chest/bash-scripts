 sudo apt-get update
 sudo apt-get install -y neovim
 curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 curl -fLo ~/.config/nvim/init.vim --create-dirs     https://raw.githubusercontent.com/lungles-chest/neovim-plug/main/init.vim
 curl -fsSL https://deb.nodesource.com/setup_21.x | sudo -E bash - &&\
 sleep 2
 sudo apt-get install -y nodejs
 nvim
