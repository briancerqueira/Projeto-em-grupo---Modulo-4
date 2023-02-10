USE mariomaker;
	
-- Quais os seis maiores recordes do Mario Maker?
SELECT 
	recordes_date
FROM recordes
ORDER BY recordes_date ASC
LIMIT 6;

-- Quais são os criados de fases mais populares?
SELECT 
	criador_name,
    criador_quantidade
FROM criador
ORDER BY criador_quantidade DESC
LIMIT 6;

-- Quais são os países com mais jogares?
SELECT 
	paises_name,
    paises_quantidade
FROM paises
ORDER BY paises_quantidade DESC
LIMIT 6;

-- Quais as dificuldades dos mapas mais acessados?
SELECT 
	dificuldades_level,
    dificuldades_quantidade
FROM dificuldades
ORDER BY dificuldades_quantidade DESC
LIMIT 5;

-- Quais os estilos de jogos mais utilizados nos mapas?
SELECT 
	estilos_de_mapas_title,
    estilos_de_mapas_quantidade
FROM estilos_de_mapas
ORDER BY estilos_de_mapas_quantidade DESC
LIMIT 4;