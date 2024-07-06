# Install Virtual Box.
sudo apt install -y virtualbox virtualbox-ext-pack

# Allow the current user to access Virtual Box.
sudo usermod -aG vboxusers ${USER}
