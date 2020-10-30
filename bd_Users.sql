CREATE DATABASE  IF NOT EXISTS `db_users` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_users`;

Drop TABLE if exists user_roles;

DROP TABLE if exists users;

Drop TABLE if exists data_user;

drop table if exists roles;

create table Data_user(
                          Id_data_user BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                          Full_name_company VARCHAR(256) NULL,
                          Short_name_company VARCHAR(256) NULL,
                          Name_director VARCHAR(100) NULL,
                          Patronymic_director VARCHAR(100) NULL,
                          Family_name_director VARCHAR(100) null,
                          Telefone VARCHAR(12)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table Users(
                      Id_Users BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                      Login VARCHAR(50) NOT NULL,
                      Password VARCHAR(1000) NOT NULL,
                      Word_coder VARCHAR(50) NOT NULL,
                      Status VARCHAR(25),
                      email VARCHAR(256) not null,
                      First_name VARCHAR(100) NOT NULL,
                      Last_name VARCHAR(100) NOT NULL,
                      Created DateTime NOT NULL,
                      Updated DateTime NOT NULL,
                      Data_user BIGINT Not NULL,
                      Data_user_id BIGINT default null,
                      CONSTRAINT FK_Users_Data_user FOREIGN KEY (Data_user_id) REFERENCES Data_user (Id_data_user)
                      ON delete set null on update restrict
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table Roles(
                      Id_Roles INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                      Name VARCHAR(100) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table User_roles(
                           Id_User_roles BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                           User_id BIGINT NOT NULL,
                           CONSTRAINT FK_User_roles_Users FOREIGN KEY (User_id) REFERENCES Users (Id_Users)
                               ON DELETE CASCADE,
                           Role_id INT NOT NULL,
                           CONSTRAINT FK_User_roles_Roles FOREIGN KEY (Role_id) REFERENCES Roles (Id_Roles)
                               ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO Users (Id_Users, Login, Password, Word_coder, Status, email, First_name, Last_name, Created, Updated) VALUES (1,'vldmr','42f846961c6718e804bcdd0f04d32a9d44fa3a4a51d4983026bd8b31525af5b5',
                     'vldmr','ACTION','vldmr@gmail.com','Vladimir','S','2020.10.25','2020.10.25');

INSERT INTO Roles VALUES (1,'ROLE_ADMIN');
INSERT INTO Roles VALUES (2,'ROLE_USER');

INSERT INTO User_roles VALUES (1,1,1);