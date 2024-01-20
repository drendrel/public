pm2 save
sudo apt-get install -y nginx
sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.old
sudo rm /etc/nginx/sites-available/default
sudo nano /etc/nginx/sites-available/default
sudo service nginx restart