CREATE DATABASE blogdiy;
USE blogdiy;

CREATE TABLE filmes (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) DEFAULT "vazio",
    ano INT(4) DEFAULT 0000,
    duracao INT(3) DEFAULT 000,
    diretor VARCHAR(255) DEFAULT "vazio",
	produtora VARCHAR(255) DEFAULT "vazio",
    genero VARCHAR(255) DEFAULT "vazio",
    sinopse TEXT ,
    trailer VARCHAR(255)DEFAULT "vazio",
    PRIMARY KEY(id)
    );
    
CREATE TABLE posts (
	id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(255),
    data VARCHAR(255),
    autor VARCHAR(255),
	tag VARCHAR(255),
    conteudo TEXT,
    PRIMARY KEY(id)
    );
    
CREATE TABLE assinantes (
	id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) DEFAULT "vazio",
    PRIMARY KEY (id)
    );
    
CREATE TABLE usuarios (
	id BIGINT NOT NULL AUTO_INCREMENT,
	usuario VARCHAR(255) not null,
	senha VARCHAR(255),
	PRIMARY KEY (id),
	CONSTRAINT UNIQUE (usuario)
	);
    




