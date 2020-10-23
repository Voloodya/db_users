
cd /tmp
echo "Download mysql"
wget "https://dev.mysql.com/get/mysql-apt-config_0.8.15-1_all.deb"
echo "Unpaking mysql"
sudo dpkg -i mysql-apt-config*
sudo dpkg-reconfigure mysql-apt-config
sudo apt-get update
echo "Install mysql-server mysql-client"
apt-get install mysql-server mysql-client
