# Installing i3 and polybar.
sudo apt install -y i3 polybar

# Copying config files.
mkdir -p $HOME/.config/i3
rm -rf $HOME/.config/i3/config
ln -s $MY_ENVIRONMENT_CONFIG_DIR/i3 $HOME/.config/i3/config

mkdir -p $HOME/.config/polybar
rm -rf $HOME/.config/polybar/config.ini
ln -s $MY_ENVIRONMENT_CONFIG_DIR/polybar.ini $HOME/.config/polybar/config.ini
