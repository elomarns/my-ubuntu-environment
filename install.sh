# Exit immediately if a command exits with a non-zero status.
set -e

# Needed for all installers.
sudo apt update -y
sudo apt install -y curl git unzip

# Ensure computer doesn't go to sleep or lock while installing.
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Run installers.
for installer in install/*.sh; do source $installer; done

# Upgrade everything that might ask for a reboot last.
sudo apt upgrade -y

# Revert to normal idle and lock settings.
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

# Logging pit to pickup changes.
echo "Logging out to pickup changes..."
i3-msg "exit"
