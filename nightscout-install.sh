sudo apt-get install -y npm
git clone https://github.com/nightscout/cgm-remote-monitor.git
ln -s cgm-remote-monitor nightscout
cd ~/nightscout
nano my.env
sudo npm install pm2 -g
env $(cat my.env)  PORT=1337 pm2 start server.js
pm2 startup
pm2 save
sudo apt-get install -y nginx