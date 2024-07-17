# Install Font Awesome.
sudo apt install -y fonts-font-awesome
cd /tmp
wget -O fontawesome.zip https://use.fontawesome.com/releases/v6.5.2/fontawesome-free-6.5.2-desktop.zip
unzip fontawesome.zip
cp fontawesome-free-6.5.2-desktop/otfs/* ~/.local/share/fonts
rm -rf fontawesome.zip fontawesome-free-6.5.2-desktop

# Function to install fonts from Nerd Fonts.
install_nerd_font() {
	local font_name=$1
	local url=$2
	local file_type=$3
	local file_name="${font_name/ Nerd Font/}"

	if ! $(fc-list | grep -i "$font_name" >/dev/null); then
		cd /tmp
		wget -O "$file_name.zip" "$url"
		unzip "$file_name.zip" -d "$file_name"
		cp "$file_name"/*."$file_type" ~/.local/share/fonts
		rm -rf "$file_name.zip" "$file_name"
		fc-cache
		cd -
	fi
}

# Install fonts from Nerd Fonts.
install_nerd_font "CaskaydiaMono Nerd Font" "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/CascadiaMono.zip" "ttf"
install_nerd_font "FiraMono Nerd Font" "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraMono.zip" "otf"
install_nerd_font "JetBrainsMono Nerd Font" "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip" "ttf"
install_nerd_font "MesloLGS Nerd Font" "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.zip" "ttf"
