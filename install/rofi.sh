# Install Rofi.
sudo apt install -y rofi

# Install themes.
git clone https://github.com/lr-tech/rofi-themes-collection.git
mkdir -p ~/.local/share/rofi/themes/
cp rofi-themes-collection/themes/*.rasi ~/.local/share/rofi/themes/
rm -rf rofi-themes-collection

# Copy the configuration file.
rm -rf $HOME/.config/rofi/config.rasi
ln -s $MY_ENVIRONMENT_CONFIG_DIR/rofi.rasi $HOME/.config/rofi/config.rasi
