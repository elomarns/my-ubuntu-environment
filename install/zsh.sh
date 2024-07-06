# Install zsh.
sudo apt install -y zsh

# Set zsh as the default shell.
chsh -s $(which zsh)

# Install Oh My Zsh.
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install plugins.
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Copy the configuration file.
rm -rf $HOME/.zshrc
ln -s $MY_ENVIRONMENT_CONFIG_DIR/.zshrc $HOME/.zshrc
