# Install Alacritty.
sudo apt install -y alacritty

# Install themes.
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes

# Copy config.
rm $HOME/.config/alacritty/alacritty.toml
ln -s $MY_ENVIRONMENT_CONFIG_DIR/alacritty.toml $HOME/.config/alacritty/alacritty.toml
