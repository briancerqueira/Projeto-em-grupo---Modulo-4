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
	id_dificuldades VARCHAR (25) PRIMARY KEY,
    dificuldades_level ENUM ('normal','easy','expert','superExpert'),
    dificuldades_title VARCHAR(255),
    dificuldades_gameStyle VARCHAR(255),
	dificuldades_playerMaker VARCHAR(255)
   
) DEFAULT CHARSET = utf8mb4;

INSERT INTO dificuldades VALUES 
('079D-0000-0351-17E2','expert', 'Apocalipse 14:12', 'marioBros3', 'NolramImpro'),
('07CD-0000-030D-EA60','expert', 'Dangerous Ship Fantasy', 'marioBrosU', 'igorsssa'),
('07F7-0000-030F-A51B','superExpert', 'Pow-Ing (Speedrun) (^o^)', 'marioWorld', 'Wiggle133'),
('080E-0000-0307-A394','expert', 'desafios radcore', 'marioBros', 'vitorotavio'),
('082F-0000-0358-A218','normal', 'Goodbye Miiverse...', 'marioBros3', 'CaptainToad4444'),
('0830-0000-0353-D322','normal', 'Track of the hills', 'marioWorld', 'yasmedice'),
('0833-0000-0357-690F','easy', 'Hiper-Quiz', 'marioBros3', 'portugueses000'),
('085F-0000-0364-6DA1','normal', 'Mario and yoshi adventure', 'marioWorld', 'Mgamer762'),
('0861-0000-0353-6FC4','normal', 'super mario bros 4  1-1', 'marioBrosU', 'gabrielkomljan'),
('0873-0000-033C-96A6','normal', 'level1 gubrixi', 'marioBrosU', 'marcelodosjogos'),
('0880-0000-0341-CA17','normal', 'nu sei', 'marioWorld', 'guilherme2007'),
('08AC-0000-0303-AB1D','easy', 'salve o lucas', 'marioWorld', 'maira78'),
('08AF-0000-030D-BD5F','normal', 'Crasy Level', 'marioBrosU', 'umbelina'),
('090E-0000-0316-8159','normal', 'aventura do toud', 'marioBros', 'vicentex3110'),
('091D-0000-035D-58F2','expert', '2: Bowsers EPIC FIGHT!', 'marioWorld', 'dimitreeey'),
('0927-0000-0348-8478','superExpert', 'Palmitos Assombrados', 'marioBrosU', 'TicoTecoTaco'),
('0934-0000-034B-65DE','normal', 'Yoshis Adventure 2: The Madness', 'marioWorld', 'lukengl'),
('093A-0000-0358-2EA9','normal', 'imaging', 'marioBrosU', 'gugudaemon'),
('0967-0000-034B-4970','easy', 'the automatic rollecoaster', 'marioWorld', 'dellymaia');

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






