cd /tmp
echo "Download mysql"
wget "https://dev.mysql.com/get/mysql-apt-config_0.8.15-1_all.deb"
echo "Unpacking mysql"
sudo dpkg -i mysql-apt-config*
echo "Updating repository configuration mysql"
sudo dpkg-reconfigure mysql-apt-config
echo "Updating index repository"
sudo apt-get update
echo "--------------------------------------------------------------"
echo "Install mysql-server"
apt-get install mysql-server
echo "Install mysql-client"
apt-get install mysql-client
echo "Test service mysql"
sudo systemctl status mysql
