sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg git
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
git clone https://gitlab.com/khassel/magicmirror.git
cd ./magicmirror/run
cp serveronly_mmpm.yml docker-compose.yml
docker compose up -d
sudo apt-get install -y nginx
sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.old
sudo rm /etc/nginx/sites-available/default
sudo cp ./default /etc/nginx/sites-available/default
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker