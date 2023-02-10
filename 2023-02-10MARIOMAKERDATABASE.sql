DROP DATABASE IF EXISTS mariomaker;

CREATE DATABASE mariomaker CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE TABLE IF NOT EXISTS recordes (
id_recordes VARCHAR(20) PRIMARY KEY NOT NULL ,
recordes_player VARCHAR (255) NOT NULL,
recordes_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
recordes_timeRecord INT NOT NULL
) DEFAULT CHARSET= utf8mb4;


select * from recordes;

CREATE TABLE dificuldades (
	id_dificuldades VARCHAR (25) PRIMARY KEY,
    dificuldades_level ENUM ('normal','easy','expert','superExpert'),
    dificuldades_title VARCHAR(255),
    dificuldades_gameStyle VARCHAR(255),
	dificuldades_playerMaker VARCHAR(255)
   
) DEFAULT CHARSET = utf8mb4;

select * from dificuldades;


CREATE TABLE criador (
	id_criador VARCHAR (20) PRIMARY KEY,
	criador_name VARCHAR(255),
    criador_quantidade INT
   
)DEFAULT CHARSET = utf8mb4;


SELECT * FROM criador;

CREATE TABLE estilos_de_mapas (
    id_estilos_de_mapas VARCHAR(20) PRIMARY KEY,
	estilos_de_mapas_title VARCHAR(255),
    estilo_de_mapas_quantidade INT
)DEFAULT CHARSET = utf8mb4;

CREATE TABLE paises (
    id_paises VARCHAR (20) PRIMARY KEY,
	paises_name VARCHAR(255) NOT NULL,
    paises_região varchar (2) default 'BR',
    paises_quantidade INT
)DEFAULT CHARSET = utf8mb4;
