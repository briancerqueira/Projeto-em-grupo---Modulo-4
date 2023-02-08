DROP DATABASE IF EXISTS mariomaker;

CREATE DATABASE mariomaker CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE TABLE IF NOT EXISTS recordes (
id_recordes INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
recordes_player VARCHAR (255) NOT NULL,
recordes_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
recordes_timeRecord INT NOT NULL
) DEFAULT CHARSET= utf8mb4;

INSERT INTO recordes VALUES 
('1','SimoneSuperBowse','2018-03-12 01:11:59.554','5999999'),
('2','meleemeister','2018-02-08 02:39:53.832','5999999'),
('3','meleemeister','2018-03-02 10:28:54.898','5999999'),
('4','venukid','2018-02-20 15:00:55.743','5999999'),
('5','MIKURIN88','2018-01-31 14:56:28.779','5999999'),
('6','meleemeister','2018-02-08 02:46:48.052','5999999');

select * from recordes;

CREATE TABLE dificuldades (
	id_dificuldades INT PRIMARY KEY AUTO_INCREMENT,
    dificuldades_level ENUM ('normal','easy','expert','superExpert'),
    dificuldades_title VARCHAR(255),
    dificuldades_gameStyle VARCHAR(255),
	dificuldades_playerMaker VARCHAR(255)
   
) DEFAULT CHARSET = utf8mb4;

INSERT INTO dificuldades VALUES 
('1','normal','Bowser is not your enemy it is','marioBros','Mar1oo');

select * from dificuldades;


CREATE TABLE fases (
	id_fases INT PRIMARY KEY AUTO_INCREMENT,
	fases_title VARCHAR(255),
    id_recordes INT,
    id_dificuldades INT,
    id_estilos_de_mapas INT,
    id_player INT,
    FOREIGN KEY (id_recordes) REFERENCES recordes (id_recordes),
    FOREIGN KEY (id_estilos_de_mapas) REFERENCES estilos_de_mapas (id_estilos_de_mapas),
    FOREIGN KEY (id_player) REFERENCES player (id_player), 
    FOREIGN KEY (id_dificuldades) REFERENCES dificuldades (id_dificuldades)
);

CREATE TABLE estilos_de_mapas (
    id_estilos_de_mapas INT PRIMARY KEY AUTO_INCREMENT,
	estilos_de_mapas_title VARCHAR(255),
    id_recordes INT,
    id_dificuldades INT,
    id_fases INT,
    id_player INT,
    FOREIGN KEY (id_recordes) REFERENCES recordes (id_recordes),
    FOREIGN KEY (id_player) REFERENCES player (id_player), 
    FOREIGN KEY (id_fases) REFERENCES fases (id_fases),
    FOREIGN KEY (id_dificuldades) REFERENCES dificuldades (id_dificuldades)
);
CREATE TABLE player (
    id_player INT PRIMARY KEY AUTO_INCREMENT,
	player_name VARCHAR(255) NOT NULL,
    player_região varchar (2) default 'BR',
    id_recordes INT,
    id_dificuldades INT,
    id_estilos_de_mapas INT,
    id_fases INT,
    FOREIGN KEY (id_recordes) REFERENCES recordes (id_recordes),
    FOREIGN KEY (id_estilos_de_mapas) REFERENCES estilos_de_mapas (id_estilos_de_mapas),
   FOREIGN KEY (id_fases) REFERENCES fases (id_fases),
    FOREIGN KEY (id_dificuldades) REFERENCES dificuldades (id_dificuldades)
);







