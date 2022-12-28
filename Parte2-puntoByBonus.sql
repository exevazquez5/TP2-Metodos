DROP TABLE IF EXISTS Socios;
DROP TABLE IF EXISTS Barcos;
DROP TABLE IF EXISTS Patrones;
DROP TABLE IF EXISTS Salidas;

CREATE TABLE Socios(
	dni INTEGER PRIMARY KEY,
	nombre VARCHAR (64) NOT NULL,
	edad INTEGER NOT NULL,
	barco_id INTEGER,
	FOREIGN KEY(barco_id) REFERENCES Barcos(id)
)

CREATE TABLE Barcos(
	id INTEGER PRIMARY KEY,
	nombre VARCHAR (64) NOT NULL,
	amarre INTEGER NOT NULL,
	cuota INTEGER NOT NULL,
	patron_dni INTEGER,
	FOREIGN KEY(patron_dni) REFERENCES Patrones(dni)
)

CREATE TABLE Patrones(
	dni INTEGER PRIMARY KEY,
	nombre VARCHAR (64) NOT NULL,
	estado VARCHAR (32) NOT NULL
)

CREATE TABLE Salidas(
	barco_id INTEGER,
	FOREIGN KEY(barco_id) REFERENCES Barcos(id),
	fecha VARCHAR (64) NOT NULL,
	hora VARCHAR (64) NOT NULL,
	destino VARCHAR (64) NOT NULL
)


INSERT INTO Socios(dni, nombre, edad, barco_id)
VALUES (43669877, 'Exequiel Vazquez', 21, 01)

INSERT INTO Patrones (dni, nombre, estado)
VALUES (40745780, 'Jacinto Baez', 'Socio')

INSERT INTO Barcos (id, nombre, amarre, cuota, patron_dni)
VALUES (01, 'La Bella', 123, 5000, 43669877)

INSERT INTO Salidas (barco_id, fecha, hora, destino)
VALUES (123, '05/12/22', '15:05pm', 'Puerto Madryn')