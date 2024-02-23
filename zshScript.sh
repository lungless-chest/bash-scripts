 sudo apt-get update
 sudo apt-get upgrade -y
 sudo apt-get install zsh zsh-autosuggestions zsh-syntax-highlighting git-core curl fonts-powerline
 sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
 sed -i '18s/ZSH_THEME="agnoster"/ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc
 sed -i '27s/# CASE_SENSITIVE="true"/CASE_SENSITIVE="true"' ~/.zshrc
 sed -i '51s/# ENABLE_CORRECTION="true"/ENABLE_CORRECTION="true"' ~/.zshrc
 git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
 git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
 git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
 git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
 sed -i '80s/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)' ~/.zshrc
 git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
 echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
 # p10k configure
 source ~/.zshrc
