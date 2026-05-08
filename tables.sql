CREATE DATABASE bd_biblioteca_univille;
USE bd_biblioteca_univille;

CREATE TABLE categoria (
	id 				INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome 			VARCHAR(80) NOT NULL,
	descricao 		TEXT NOT NULL
);

CREATE TABLE livro (
	id 				INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    titulo			VARCHAR(255) NOT NULL,
    ibsn 			VARCHAR(17),
    autor 			VARCHAR(80) NOT NULL,
    editora 		VARCHAR(80) NOT NULL,
	ano 			YEAR NOT NULL,
    edicao 			TINYINT NOT NULL,
    exemplares 		TINYINT NOT NULL DEFAULT 1,
    id_categoria 	INT NOT NULL,
	CONSTRAINT id_categoria
    FOREIGN KEY (id_categoria) REFERENCES categoria(id) ON UPDATE CASCADE
);

CREATE TABLE funcionario (
	id 				INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome 			VARCHAR(80) NOT NULL,
	cargo 			VARCHAR(80) NOT NULL,
    login 			VARCHAR(40) NOT NULL,
    senha 			VARCHAR(255) NOT NULL, 
    ativo			BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE usuario(
	id 				INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome 			VARCHAR(120) NOT NULL,
    matricula 		VARCHAR(10) NOT NULL,
    curso 			VARCHAR(100) NOT NULL,
    tipo 			ENUM('aluno', 'professor', 'funcionario') NOT NULL DEFAULT 'aluno',
    telefone 		VARCHAR(20) NOT NULL,
    email 			VARCHAR(60) NOT NULL
);

CREATE TABLE emprestimo(
	id 				INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_usuario 		INT NOT NULL, #certo
    id_livro 		INT NOT NULL,
    id_funcionario 	INT NOT NULL,
    data_emprestimo 		DATE NOT NULL,
    data_devolucao_prevista DATE NOT NULL,
    data_devolucao_real 	DATE, /* nao precisa ser null pq nao sabemos quando vai ser a data real */
    status ENUM('Em aberto', 'Devolvido', 'Atrasado') NOT NULL,
	FOREIGN KEY (id_usuario) 		REFERENCES usuario(id) ON UPDATE CASCADE,
	FOREIGN KEY (id_livro) 			REFERENCES livro(id) ON UPDATE CASCADE,
    FOREIGN KEY (id_funcionario)	REFERENCES funcionario(id) ON UPDATE CASCADE
);