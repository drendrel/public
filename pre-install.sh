sudo apt update
sudo apt install -y nano
sudo apt upgrade -y
sudo apt clean
sudo /bin/sh -c 'echo YOURDOMAINNAME.com > /etc/hostname'
sudo hostname YOURDOMAINNAME.com
sudo reboot