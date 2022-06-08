ssh -T -i ~/.ssh/id_rsa "$USER@$HOST" << EOL
  sudo su
  cd /var/www/tic-tac-toe
  git pull
  docker-compose build
  docker-compose up -d
EOL
