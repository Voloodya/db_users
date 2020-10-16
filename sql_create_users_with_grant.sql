DROP USER 'vldmr'@'localhost';
CREATE USER 'vs'@'localhost' IDENTIFIED BY '123';
CREATE USER 'vldmr'@'localhost' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON db_users.* TO 'vs'@'localhost' with GRANT OPTION;
GRANT ALL PRIVILEGES ON db_users.users TO 'vldmr'@'localhost';
FLUSH PRIVILEGES;
SELECT User,Host FROM mysql.user;
SHOW GRANTS FOR 'vs'@'localhost';
SHOW GRANTS FOR 'vldmr'@'localhost';
