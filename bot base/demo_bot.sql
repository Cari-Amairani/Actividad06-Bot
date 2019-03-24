CREATE DATABASE botfutbol;

USE botfutbol;

CREATE TABLE equipos(
    id_equipo int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    equipo varchar(100) NOT NULL,
    jugador varchar(80) NOT NULL,
    goles INT NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO equipos (equipo, jugador, goles)
VALUES ('America', 'Osvaldo Castro', 63),
('Pachuca', 'Gabriel Caballero', 69),
('Atlas', 'Bruno Marioni', 10),
('Pumas', 'Nicolas Castillo', 11),
('Tigres','Andres Silvera', 16);

SHOW TABLES;

SELECT * FROM equipos;

DESCRIBE equipos;

CREATE USER 'fut'@'localhost' IDENTIFIED BY 'fut.2019';
GRANT ALL PRIVILEGES ON bot_fut.* TO 'fut'@'localhost';
FLUSH PRIVILEGES;