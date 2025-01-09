# Exit immediately if a command exits with a non-zero status.
set -e

# Set the main environment variables if they don't exist.
[ -z "$MY_ENVIRONMENT_DIR" ] && export MY_ENVIRONMENT_DIR=$HOME/Dropbox/Projetos/Ambiente/my-ubuntu-environment
[ -z "$MY_ENVIRONMENT_CONFIG_DIR" ] && export MY_ENVIRONMENT_CONFIG_DIR=$MY_ENVIRONMENT_DIR/config

# Set my personal environment variables.
echo "\nEnter your name: "
read name
export NAME=$name

echo "Enter your email: "
read email
export EMAIL=$email

# Ensure computer doesn't go to sleep or lock while installing.
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Install essencial dependencies.
sudo apt update -y
sudo apt install -y \
  curl git unzip build-essential pkg-config autoconf bison clang rustc \
  libssl-dev libreadline-dev zlib1g-dev libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev libjemalloc2 \
  libvips imagemagick libmagickwand-dev mupdf mupdf-tools gir1.2-gtop-2.0 gir1.2-clutter-1.0 \
  redis-tools sqlite3 libsqlite3-0 libmysqlclient-dev libpq-dev postgresql-client postgresql-client-common

# Run installers.
for installer in $MY_ENVIRONMENT_DIR/install/*.sh; do source $installer; done

# Upgrade everything that might ask for a reboot last.
sudo apt upgrade -y

# Revert to normal idle and lock settings.
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

# Rebooting to pickup changes.
echo "Rebooting to pickup changes..."
sudo reboot
