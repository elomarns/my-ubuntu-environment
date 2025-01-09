# Install Git.
sudo apt install -y git

# Set Git.
git config --global user.name $NAME
git config --global user.email $EMAIL
git config --global init.defaultBranch main
git config --global core.editor $EDITOR
git config --global pull.rebase true
