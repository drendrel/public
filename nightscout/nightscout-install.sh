sudo apt update
sudo apt upgrade -y
sudo apt clean
sudo apt install nano -y
sudo apt-get install gnupg curl
curl -fsSL https://pgp.mongodb.com/server-6.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-6.0.gpg --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
sudo apt install -y nodejs build-essential checkinstall libssl-dev
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source /etc/profile
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 
nvm install 16.20.1
nvm use 16.20.1
sudo apt-get install -y npm
cd
git clone https://github.com/nightscout/cgm-remote-monitor.git
ln -s cgm-remote-monitor nightscout
cd nightscout   
npm install
mongosh
cp ~/my.env ~/nightscout/my.env
sudo npm install pm2 -g
env $(cat my.env)  PORT=1337 pm2 start server.js
sudo apt-get install -y nginx
sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.old
sudo rm /etc/nginx/sites-available/default
sudo cp ~/default /etc/nginx/sites-available/default
sudo service nginx restart
pm2 save
printf "\n\n\n\n\n\n"
pm2 startup
printf "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n"
read -p "RUN THE COMMAND ABOVE PROVIDED BY 'pm2 startup'. Press enter and then paste the command:"