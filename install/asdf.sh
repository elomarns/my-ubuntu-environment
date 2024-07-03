# Install asdf.
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0

# Activate asdf.
. $HOME/.asdf/asdf.sh

# Copy the config file.
rm -rf $HOME/.asdfrc
ln -s $MY_ENVIRONMENT_CONFIG_DIR/.asdfrc $HOME/.asdfrc

# Install Ruby.
asdf plugin add ruby
asdf install ruby latest
asdf global ruby latest
# Copy .gemrc.
rm -rf $HOME/.gemrc
ln -s $MY_ENVIRONMENT_CONFIG_DIR/.gemrc $HOME/.gemrc

# Install Node.js.
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest

# Install Python.
asdf plugin-add python
asdf install python latest
asdf global python latest
