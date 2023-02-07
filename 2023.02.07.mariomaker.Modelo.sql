-- PAGAR NO TRELLO DIAGRAMA ATUALIZADO
-- FALAR COM FREIRE sobre o script

DROP DATABASE IF EXISTS mariomaker;

CREATE DATABASE mariomaker CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE fases (
	id_fase INT PRIMARY KEY AUTO_INCREMENT,
	fase_title VARCHAR(255),
    FOREIGN KEY (id_recordes) REFERENCES recordes (id_recordes),
    FOREIGN KEY (id_estilos_de_mapas) REFERENCES estilos_de_mapas (id_estilos_de_mapas),
    FOREIGN KEY (id_player) REFERENCES recordes (id_player), -- pegar o att com o alan
    FOREIGN KEY (id_dificuldades) REFERENCES dificuldades (id_dificuldades)
);
CREATE TABLE dificultades (
	id_dificuldades INT PRIMARY KEY AUTO_INCREMENT,
    
);
CREATE TABLE estilos_de_mapas ();
CREATE TABLE recordes ();