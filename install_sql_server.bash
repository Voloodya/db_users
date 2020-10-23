
cd /tmp
echo "Download mysql"
wget "https://dev.mysql.com/get/mysql-apt-config_0.8.15-1_all.deb"
echo "Unpacking mysql"
sudo dpkg -i mysql-apt-config*
echo "Updating repository configuration mysql"
sudo dpkg-reconfigure mysql-apt-config
echo "Updating index repository"
sudo apt-get update
echo "Install mysql-server mysql-client"
apt-get install mysql-server mysql-client
