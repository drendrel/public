# public

# NightScout Install
# Run the below commands to download the Nightscout install script.
wget https://raw.githubusercontent.com/drendrel/public/main/nightscout-install.sh
sudo chmod +x nightscout-install.sh

# The script will require pasting the Mongo DB commands found in the mongo-nightscout file. It will also require pasting 'my.env' and 'default' files.

# Change Hostname
wget https://raw.githubusercontent.com/drendrel/public/main/changehostname.sh
sudo chmod +x change-hostname.sh