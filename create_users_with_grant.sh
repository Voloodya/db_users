echo "Старт mysql"
#sudo /etc/init.d/mysql start
echo "Удаление пользователя"
DROP USER 'vldmr'@'localhost';
echo "Создание пользователя 1"
CREATE USER 'vs'@'localhost' IDENTIFIED BY '123';
echo "Создание пользователя 2"
CREATE USER 'vldmr'@'localhost' IDENTIFIED BY '123';
echo "Назначение прав пользователя 1"
GRANT ALL PRIVILEGES ON db_users.* TO 'vs'@'localhost' with GRANT OPTION;
echo "Назначение прав пользователя 2"
GRANT ALL PRIVILEGES ON db_users.users TO 'vldmr'@'localhost';

FLUSH PRIVILEGES;

echo "Список пользователей"
SELECT User,Host FROM mysql.user;
echo "Права пользователя 1"
SHOW GRANTS FOR 'vs'@'localhost';
echo "Права пользователя 2"
SHOW GRANTS FOR 'vldmr'@'localhost';
