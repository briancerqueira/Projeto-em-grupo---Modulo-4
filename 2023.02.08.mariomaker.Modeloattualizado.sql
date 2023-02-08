-- PAGAR NO TRELLO DIAGRAMA ATUALIZADO
-- FALAR COM FREIRE sobre o script

DROP DATABASE IF EXISTS mariomaker;

CREATE DATABASE mariomaker CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE mariomaker;

-- Criando as tabelas
CREATE TABLE fases (
	id_fase INT PRIMARY KEY AUTO_INCREMENT,
	fase_title VARCHAR(255)
);

CREATE TABLE estilos_de_mapas (
	id_estilos_de_mapas INT PRIMARY KEY AUTO_INCREMENT,
    nome_fases INT,
    FOREIGN KEY (nome_fases) REFERENCES fases (id_fase)
);

CREATE TABLE dificuldades (
	id_dificuldades INT PRIMARY KEY AUTO_INCREMENT, -- fazer como a tabela categorias do jocablog
    numero_fase INT,
    estilo_mapa INT,
    FOREIGN KEY (numero_fase) REFERENCES fases (id_fase),
	FOREIGN KEY (estilo_mapa) REFERENCES estilos_de_mapas (id_estilos_de_mapas)
);


CREATE TABLE recordes (
	id_recordes INT PRIMARY KEY AUTO_INCREMENT,
    catch TIMESTAMP, -- perguntar ao alan oq é isso
    timeRecord TIME,
    dificuldade INT,
	FOREIGN KEY (dificuldade) REFERENCES dificuldades (id_dificuldades)

);

-- Tabela associativa: Player (perguntar ao grupo se precisa dela)

CREATE TABLE player(
	id_player INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    nacionalidade VARCHAR (255),
    nome_fase INT,
    recorde INT,
	FOREIGN KEY (nome_fase) REFERENCES fases (id_fase),
	FOREIGN KEY (recorde) REFERENCES recordes (id_recordes)
);



