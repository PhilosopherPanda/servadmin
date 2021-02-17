CREATE DATABASE IF NOT EXISTS Trucorpdb;
USE Trucorpdb;

CREATE TABLE users(
ID int NOT NULL PRIMARY KEY,
Nama varchar(255) NOT NULL,
Kantor varchar(255) NOT NULL
);

INSERT INTO users(ID, Nama, Kantor) VALUES (1,"william","Pusat");
INSERT INTO users(ID, Nama, Kantor) VALUES (2,"surya","Pusat");
