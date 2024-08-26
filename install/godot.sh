cd /tmp
wget -O godot.zip 'https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_linux.x86_64.zip'
unzip godot.zip -d godot
sudo mv godot/Godot* /usr/local/bin/godot
rm -rf godot.zip godot
cd -
