CREATE DATABASE CINEMA;
USE CINEMA;

CREATE TABLE Filme(
	id_Filme INT AUTO_INCREMENT PRIMARY KEY,
	titulo VARCHAR(150),
	duracao_minutos INT,
	genero VARCHAR(50)
);

CREATE TABLE Sessao(
	id_sessao INT AUTO_INCREMENT PRIMARY KEY,
	FOREIGN KEY (id_Filme) REFERENCES filme(id),
	data_sessao DATE,
    horario TIME,
    sala VARCHAR(20),
    capacidade_maxima INT
    );

CREATE TABLE ingresso(
	id_ingresso INT AUTO_INCREMENT PRIMARY KEY,
	FOREIGN KEY (id_sessao) REFERENCES Sessao(id),
    nome_cliente VARCHAR(100),
    valor_pago DECIMAL(6,2)
);

INSERT INTO Filme (titulo, duracao, genero) VALUES
    ('Pirates of Silicon Valley', '95 min', 'Drama'),
    ('The Social Network', '120 min', 'Drama'),
    ('Jobs', '128 min', 'Drama'),
    ('The Imitation Game', '113 min', 'Suspense'),
    ('Snowden', '134 min', 'Suspense');
