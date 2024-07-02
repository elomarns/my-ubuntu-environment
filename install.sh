# Exit immediately if a command exits with a non-zero status.
set -e

# This is needed for all installers.
sudo apt update -y
sudo apt install -y curl git unzip

# Ensure computer doesn't go to sleep or lock while installing.
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Install essencial dependencies.
sudo apt install -y \
	build-essential pkg-config autoconf bison patch rustc cargo clang uuid-dev \
	libssl-dev libreadline-dev libgmp-dev zlib1g-dev libyaml-dev libncurses5-dev \
  libffi-dev libgdbm6 libgdbm-dev libdb-dev libjemalloc2 libvips \
  imagemagick libmagickwand-dev mupdf mupdf-tools \
	redis-tools sqlite3 libsqlite3-0 libmysqlclient-dev

# Run installers.
for installer in install/*.sh; do source $installer; done

# Upgrade everything that might ask for a reboot last.
sudo apt upgrade -y

# Revert to normal idle and lock settings.
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

# Logging out to pickup changes.
echo "Logging out to pickup changes..."
gnome-session-quit --logout --no-prompt
