sudo npm install pm2 -g
env $(cat my.env)  PORT=1337 pm2 start server.js
pm2 startup
pm2 save