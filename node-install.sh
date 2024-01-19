sudo apt install -y nodejs
sudo apt install -y build-essential checkinstall
sudo apt install -y libssl-dev
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source /etc/profile
nvm install 16.20.1
nvm use 16.20.1