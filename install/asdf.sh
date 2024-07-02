# Install asdf.
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0

# Activate asdf.
. $HOME/.asdf/asdf.sh

# Copy the config file.
current_dir=$(dirname "$0")
asdfrc_file="$current_dir/../config/.asdfrc"
asdfrc_file_full_path=$(realpath "$asdfrc_file")
rm -rf $HOME/.asdfrc
ln -s $asdfrc_file_full_path $HOME/.asdfrc

# Install Ruby.
asdf plugin add ruby
asdf install ruby latest
asdf global ruby latest
# Copy .gemrc.
gemrc_file="$current_dir/../config/.gemrc"
gemrc_file_full_path=$(realpath "$gemrc_file")
rm -rf $HOME/.gemrc
ln -s $gemrc_file_full_path $HOME/.gemrc

# Install Node.js.
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest

# Install Python.
asdf plugin-add python
asdf install python latest
asdf global python latest
