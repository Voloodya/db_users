echo "Старт mysql"
sudo /etc/init.d/mysql start
echo "Вход в mysql"
mysql -u root -p
echo "Создние БД"
CREATE DATABASE  db-users;
echo "Вход в БД"
USE db-users;

echo "Создание таблицы Users"
create table Users{
	Id_Users int(11) NOT NULL AUTO_INCREMENT,
	Login VARCHAR(50) NOT NULL,
	Password VARCHAR(1000) NOT NULL,
	World_coder VARCHAR(50) NOT NULL,
	Status VARCHAR(25),
	email VARCHAR(50) not null,
	First_name VARCHAR(100) NOT NULL,
	Last_name VARCHAR(100) NOT NULL
};
echo "Создание таблицы Roles"
create table Roles{
	Id_Roles int(11) NOT NULL AUTO_INCREMENT,
	Description text NULL,
};
echo "Создание таблицы GrantAuthority"
create table GrantAuthority{
	Id_GrantAuthority int(11) NOT NULL AUTO_INCREMENT,
	User_id int(11) NOT NULL,
	CONSTRAINT FK_GrantAuthority_Users FOREIGN KEY (User_id) REFERENCES Users (Id_Users)
	ON DELETE CASCADE,
	Role_id int(11) NOT NULL,
	CONSTRAINT FK_GrantAuthority_Roles FOREIGN KEY (Role_id) REFERENCES Roles (Id_Roles)
	ON DELETE CASCADE, 
};
echo "Создание таблицы DataUser"
create table DataUser{
	Id_GrantAuthority int(11) NOT NULL AUTO_INCREMENT,
	User_id int(11) NOT NULL,
	CONSTRAINT FK_GrantAuthority_Users FOREIGN KEY (User_id) REFERENCES Users (Id_Users)
	ON DELETE CASCADE,
	Full_name_company VARCHAR(256) NULL,
	Short_name_company VARCHAR(256) NULL,
	First_name VARCHAR(100) NOT NULL,
	Patronymic_name VARCHAR(100) NULL,
	Family_name VARCHAR(100) not null	 
};
