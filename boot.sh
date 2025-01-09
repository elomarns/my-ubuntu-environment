# Exit immediately if a command exits with a non-zero status.
set -e

echo "Installing Git..."
sudo add-apt-repository -y ppa:git-core/ppa > /dev/null
sudo apt update > /dev/null
sudo apt install -y git > /dev/null

echo "Cloning my environment..."
mkdir -p ~/Dropbox/Projetos/Ambiente
rm -rf ~/Dropbox/Projetos/Ambiente/my-ubuntu-environment
git clone https://github.com/elomarns/my-ubuntu-environment.git ~/Dropbox/Projetos/Ambiente/my-ubuntu-environment > /dev/null

echo "Installing my environment..."
source ~/Dropbox/Projetos/Ambiente/my-ubuntu-environment/install.sh
