#!/usr/bin/env sh

# Installing homebrew and git
echo "Installing homebrew and git..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git

# For managing permissions in accessibility
brew install tccutil

# Gui applications
echo "Installing Gui applications..."
brew install --cask spotify
brew install --cask brave-browser
brew install --cask cursorcerer
brew install --cask alacritty
brew install --cask karabiner-elements
brew install --cask ferdi
brew install --cask istat-menus
brew install --cask docker

# Alfred
echo "Installing Alfred..."
brew install --cask alfred
sudo tccutil --insert com.runningwithcrayons.Alfred
sudo tccutil --enable com.runningwithcrayons.Alfred

# Oh-my-zsh
echo "Installing Oh-my-zsh..."
compaudit | xargs chmod g-w,o-w
sh -c "$(curl -fsSL https://raw.githubusercontent.com/EilifAkerjordet/dotfiles_mac/HEAD/dotfiles_utils/oh-my-zsh-installer.sh)"
## Plugins oh my zsh
echo "Installing plugins for Oh-my-zsh"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
git clone https://github.com/softmoth/zsh-vim-mode.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vim-mode"

# Cloning dotfiles into home directory
echo "Cloning dotfiles..."
echo ".dotfiles.git" >> .gitignore
rm .zshrc
git clone --bare https://www.github.com/EilifAkerjordet/dotfiles_mac.git "$HOME/.dotfiles.git"
/usr/bin/git --git-dir="$HOME/.dotfiles.git/" --work-tree="$HOME" checkout
/usr/bin/git --git-dir="$HOME/.dotfiles.git/" --work-tree="$HOME" config --local status.showUntrackedFiles no


# Tmux
echo "Installing Tmux..."
brew install tmux
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

# Main font
echo "Installing main font..."
brew tap homebrew/cask-fonts
brew install --cask font-sauce-code-pro-nerd-font

# Other command line tools
echo "Installing other command line tools..."
sudo gem install colorls # For colorful ls commans (lc alias)
brew install node
brew install php
brew install docker-compose
brew install yarn
brew install python3
brew install lua
brew install luarocks
brew install fzf
brew install ripgrep

# Code formatters
echo "Installing code formatters..."
npm install -g prettier
npm install --global prettier @prettier/plugin-php
luarocks install --server=https://luarocks.org/dev luaformatter

# Neovim pip dependencies
echo "Installing ranger and pynvim..."
pip3 install ranger-fm
pip3 install pynvim

# Neovim
echo "Installing Neovim..."
brew install --HEAD neovim
echo "Installing Neovim plugins..."
## Running headless will install packer and plugins automatically
nvim --headless +qa

# SKHD
echo "Installing SKHD..."
brew install koekeishiya/formulae/skhd
sudo tccutil --insert /usr/local/Cellar/skhd/0.3.5/bin/skhd
sudo tccutil --enable /usr/local/Cellar/skhd/0.3.5/bin/skhd
brew services start skhd

# Yabai
echo "Installing Yabai..."
brew install koekeishiya/formulae/yabai
sudo tccutil --insert /usr/local/Cellar/yabai/3.3.8/bin/yabai
sudo tccutil --enable /usr/local/Cellar/yabai/3.3.8/bin/yabai
sudo yabai --install-sa
sudo yabai --load-sa
echo "$USER ALL = (root) NOPASSWD: /usr/local/bin/yabai --load-sa" | (sudo su -c 'EDITOR="tee" visudo -f /private/etc/sudoers.d/yabai')
brew services start yabai

echo "Cleaning up a bit..."
brew cleanup

echo "Shutting down computer. Remember to restart it... :)"
sudo shutdown -r now

# @TODO
# Install language servers in headless mode (nvim)
