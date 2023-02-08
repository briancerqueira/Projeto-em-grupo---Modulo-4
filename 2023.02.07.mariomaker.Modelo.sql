-- PAGAR NO TRELLO DIAGRAMA ATUALIZADO
-- FALAR COM FREIRE sobre o script

DROP DATABASE IF EXISTS mariomaker;

CREATE DATABASE mariomaker CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Criando as tabelas

CREATE TABLE fases (
	id_fase INT PRIMARY KEY AUTO_INCREMENT,
	fase_title VARCHAR(255),
    FOREIGN KEY (id_recordes) REFERENCES recordes (id_recordes),
    FOREIGN KEY (id_estilos_de_mapas) REFERENCES estilos_de_mapas (id_estilos_de_mapas),
    FOREIGN KEY (id_player) REFERENCES recordes (id_player), -- pegar o att com o alan
    FOREIGN KEY (id_dificuldades) REFERENCES dificuldades (id_dificuldades)
);

CREATE TABLE dificultades (
	id_dificuldades INT PRIMARY KEY AUTO_INCREMENT, -- fazer como a tabela categorias do jocablog
    FOREIGN KEY (id_fases) REFERENCES fases (id_fase),
    FOREIGN KEY (id_estilos_de_mapas) REFERENCES estilos_de_mapas (id_estilos_de_mapas)
);

CREATE TABLE estilos_de_mapas (
	id_estilos_de_mapas INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (id_fases) REFERENCES fases (id_fase),
    FOREIGN KEY (id_dificuldades) REFERENCES dificuldades (id_dificuldades) 
);

CREATE TABLE recordes (
	id_recordes INT PRIMARY KEY AUTO_INCREMENT,
    catch VARCHAR(255), -- perguntar ao alan oq é isso
    timeRecord TIME,
    player VARCHAR (255) -- mudar para chave estrangeira??
    
);

-- Tabela associativa: Player (perguntar ao grupo se precisa dela)

CREATE TABLE player(
	id_player INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    nacionalidade VARCHAR (255)
);