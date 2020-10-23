DROP DATABASE IF EXISTS db_users;
CREATE DATABASE IF NOT EXISTS  db_users;
USE db_users;
create table Users(
	Id_Users BIGINT NOT NULL AUTO_INCREMENT,
	Login VARCHAR(50) NOT NULL,
	Password VARCHAR(1000) NOT NULL,
	World_coder VARCHAR(50) NOT NULL,
	Status VARCHAR(25),
	email VARCHAR(256) not null,
	First_name VARCHAR(100) NOT NULL,
	Last_name VARCHAR(100) NOT NULL,
	Created DateTime NOT NULL,
	Updated DateTime NOT NULL,
	PRIMARY KEY (Id_Users)
);
create table Roles(
	Id_Roles BIGINT NOT NULL AUTO_INCREMENT,
	Name VARCHAR(100) NOT NULL,
	PRIMARY KEY (Id_Roles)
);
create table User_roles(
	Id_User_roles BIGINT NOT NULL AUTO_INCREMENT,
	User_id BIGINT NOT NULL,
	CONSTRAINT FK_User_roles_Users FOREIGN KEY (User_id) REFERENCES Users (Id_Users)
	ON DELETE CASCADE,
	Role_id BIGINT NOT NULL,
	CONSTRAINT FK_User_roles_Roles FOREIGN KEY (Role_id) REFERENCES Roles (Id_Roles)
	ON DELETE CASCADE,
	PRIMARY KEY (Id_User_roles)
);
create table Data_user(
	Id_Data_user BIGINT NOT NULL AUTO_INCREMENT,
	User_id BIGINT NOT NULL,
	CONSTRAINT FK_Data_user_Users FOREIGN KEY (User_id) REFERENCES Users (Id_Users)
	ON DELETE CASCADE,
	Full_name_company VARCHAR(256) NULL,
	Short_name_company VARCHAR(256) NULL,
	Name_director VARCHAR(100) NULL,
	Patronymic_director VARCHAR(100) NULL,
	Family_name_director VARCHAR(100) null,
	Telefone VARCHAR(12),
	PRIMARY KEY (Id_Data_user)	
);
