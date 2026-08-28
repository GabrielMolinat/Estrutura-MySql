CREATE DATABASE if not exists curso_certo
default character set utf8mb4
collate utf8mb4_0900_ai_ci;
USE curso_certo;
drop database curso_certo

CREATE Table if not exists usuario (
	id int PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(30),
	email VARCHAR(254) not NULL UNIQUE,
	cpf VARCHAR(11),
	telefone INT,
	status_usuario boolean,
	tipo_usuario enum ('aluno','Professor','Administrador')

) character set utf8mb4;

CREATE Table if not exists curso (
	id int PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(30),
	carga_horaria DATETIME,
	area_curso VARCHAR(50)

) character set utf8mb4;

CREATE TABLE if not exists matricula (
	id int PRIMARY KEY AUTO_INCREMENT,
	data_inic DATE,
	status_matricula BOOLEAN,
	id_usuario int,
	id_curso int,
	Foreign Key (id_usuario) REFERENCES usuario(id),
	Foreign Key (id_curso) REFERENCES curso(id)

) character set utf8mb4;

CREATE TABLE if NOT exists modulo (
	id int PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(30),
	id_curso int,
	Foreign Key (id_curso) REFERENCES curso(id)

) character set utf8mb4;

CREATE TABLE if NOT exists video (
	id int PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(30),
	id_curso int,
	Foreign Key (id_curso) REFERENCES curso(id)

) character set utf8mb4;
