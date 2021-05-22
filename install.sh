#!/bin/sh

# For managing permissions in accessibility
brew install tccutil

# For oh my zsh permissions
compaudit | xargs chmod g-w,o-w

# Gui applications
brew install --cask spotify
brew install --cask brave-browser
brew install --cask cursorcerer
brew install --cask alacritty
brew install --cask karabiner-elements
brew install --cask ferdi
brew install --cask istat-menus
brew install --cask docker

# Alfred
brew install --cask alfred
sudo tccutil --insert com.runningwithcrayons.Alfred
sudo tccutil --enable com.runningwithcrayons.Alfred

# Oh-my-zsh
mv .zshrc .zshrc_backup
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm .zshrc
mv .zshrc_backup .zshrc
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 

## Plugins oh my zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/softmoth/zsh-vim-mode.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vim-mode

# Tmux
brew install tmux
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

# Main font
brew tap homebrew/cask-fonts
brew install --cask font-sauce-code-pro-nerd-font

sudo gem install colorls

# Other
brew install node
brew install docker-compose
brew install yarn
brew install python3
brew install lua
brew install luarocks
brew install fzf
brew install ripgrep

# Neovim pip dependencies
pip3 install ranger-fm
pip3 install pynvim

# Yabai
brew install koekeishiya/formulae/yabai
sudo tccutil --insert /usr/local/Cellar/yabai/3.3.8/bin/yabai
sudo tccutil --enable /usr/local/Cellar/yabai/3.3.8/bin/yabai
sudo yabai --install-sa
sudo yabai --load-sa
echo "$USER ALL = (root) NOPASSWD: /usr/local/bin/yabai --load-sa" | (sudo su -c 'EDITOR="tee" visudo -f /private/etc/sudoers.d/yabai')
brew services start yabai

# SKHD
brew install koekeishiya/formulae/skhd
sudo tccutil --insert /usr/local/Cellar/skhd/0.3.5/bin/skhd
sudo tccutil --enable /usr/local/Cellar/skhd/0.3.5/bin/skhd
brew services start skhd

# Neovim
brew install --HEAD neovim
git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim -u ~/.config/nvim/init.lua +PackerInstall


# @TODO
# AUto LSPINSTALL
# Github ssh
# OH MY ZSH with plugins had issues during install also installing oh my zsh cancels install
# Oh my zsh replaces default .zshrc
