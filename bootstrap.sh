
# Apache
apt-get install -y apache2

#install memcached
apt-get install memcached

#install memcached tools
apt-get install libmemcached-tools

#crontab runs per minute
cron="* * * * * /home/vagrant/exercise-memcached.sh"

crontab -l > mycron
# Append new cron into cron file
echo "$cron" >> mycron
# Install new cron file
crontab mycron
# Remove temp file
rm mycron