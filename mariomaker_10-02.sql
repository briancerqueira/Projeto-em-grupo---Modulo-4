-- Apagar o banco de dados
DROP DATABASE IF EXISTS mariomaker;

CREATE DATABASE mariomaker CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE mariomaker;

-- Criar entidade (tabela)
CREATE TABLE recordes (
id_recordes INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
recordes_player VARCHAR (255) NOT NULL,
recordes_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
recordes_timeRecord INT NOT NULL
);

CREATE TABLE dificuldades (
	id_dificuldades VARCHAR (25) PRIMARY KEY,
    dificuldades_level ENUM ('normal','easy','expert','superExpert'),
    dificuldades_title VARCHAR(255),
    dificuldades_gameStyle VARCHAR(255),
	dificuldades_playerMaker VARCHAR(255),
    dificuldades_quantidade INT
);

CREATE TABLE criador (
	id_criador VARCHAR (20) PRIMARY KEY,
	criador_name VARCHAR(255),
	criador_quantidade INT
);
   
   CREATE TABLE estilos_de_mapas (
    id_estilos_de_mapas INT PRIMARY KEY,
	estilos_de_mapas_title VARCHAR(20),
    estilos_de_mapas_quantidade INT
);

CREATE TABLE paises (
    id_paises VARCHAR (20) PRIMARY KEY,
    paises_name varchar (2) default 'BR',
    paises_quantidade FLOAT
);

INSERT INTO recordes VALUES 
('1','SimoneSuperBowse','2018-03-12 01:11:59.554','5999999'),
('2','meleemeister','2018-02-08 02:39:53.832','5999999'),
('3','meleemeister','2018-03-02 10:28:54.898','5999999'),
('4','venukid','2018-02-20 15:00:55.743','5999999'),
('5','MIKURIN88','2018-01-31 14:56:28.779','5999999'),
('6','meleemeister','2018-02-08 02:46:48.052','5999999');

INSERT INTO dificuldades VALUES 
('079D-0000-0351-17E2','expert', 'Apocalipse 14:12', 'marioBros3', 'NolramImpro','27753'),
('07F7-0000-030F-A51B','superExpert', 'Pow-Ing (Speedrun) (^o^)', 'marioWorld', 'Wiggle133','6233'),
('082F-0000-0358-A218','normal', 'Goodbye Miiverse...', 'marioBros3', 'CaptainToad4444','51354'),
('0833-0000-0357-690F','easy', 'Hiper-Quiz', 'marioBros3', 'portugueses000','29692');

INSERT INTO estilos_de_mapas VALUES 
('1','marioBrosU','59464'),
('2','marioBros','24342'),
('3','marioWorld','21908'),
('4','marioBros3','9318');

INSERT INTO criador VALUES 
('4F8B-0000-0357-B536','Xavierol69','100'),
('00D3-0000-0358-06F5','Zerodius','100'),
('3FDE-0000-0339-67D4','JustinDianaRalf','83'),
('8FCE-0000-0348-A00D','Shiraur','80'),
('EFFC-0000-0347-C645','drmsj1983','80');

INSERT INTO paises VALUES
('1', 'US','292471'),
('2', 'JP','286507'),
('3', 'FR','50212'),
('4', 'DE','48182'),
('5', 'CA','46110');
 