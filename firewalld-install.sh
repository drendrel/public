sudo apt install -y firewalld
sudo firewall-cmd --permanent --add-service={http,https}
sudo systemctl enable firewalld
sudo systemctl start firewalld