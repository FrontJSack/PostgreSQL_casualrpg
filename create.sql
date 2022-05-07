--SET client_encoding='utf-8';

CREATE TABLE postac (
	id	 	serial 		PRIMARY KEY,
	nazwa 		VARCHAR(16) 	NOT NULL,
	rasa 		VARCHAR(10) 	NOT NULL,
	poziom 		int 		NOT NULL,
	pd 		int 		NOT NULL
);

CREATE TABLE statystyki (
	id		serial 	PRIMARY KEY,
	postac_id	int	NOT NULL,
	sila		int	NOT NULL,
	zwinnosc 	int 	NOT NULL,
	szczescie	int 	NOT NULL,
	wytrzymalosc	int	NOT NULL,
	inteligencja	int 	NOT NULL,
	CONSTRAINT 	fk_postac_id FOREIGN KEY(postac_id) REFERENCES postac(id)
);

CREATE TABLE zadania (
	id		serial		PRIMARY KEY,
	tresc		VARCHAR(100) 	NOT NULL,
	nagroda		VARCHAR(50) 	NOT NULL
);

CREATE TABLE ekwipunek (
	id			serial 	PRIMARY KEY,
	postac_id		int	NOT NULL,
	ilosc_przedmiotow	int,
	CONSTRAINT postac_id_fk FOREIGN KEY(postac_id) REFERENCES postac(id)
);

CREATE TABLE przedmioty (
	id		serial		PRIMARY KEY,
	nazwa 		VARCHAR(16) 	NOT NULL,
	atak		int,
	obrona		int,
	wytrzymalosc	int		NOT NULL
);

CREATE TABLE ekwipunek_przedmioty (
	ekwipunek_id	int 	NOT NULL,
	przedmiot_id	int 	NOT NULL,
	CONSTRAINT ekwipunek_przedmioty_pk PRIMARY KEY (ekwipunek_id, przedmiot_id),
	CONSTRAINT ekwipunek_fk FOREIGN KEY(ekwipunek_id) REFERENCES ekwipunek(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT przedmioty_fk FOREIGN KEY(przedmiot_id) REFERENCES przedmioty(id)
);

CREATE TABLE postac_zadania (
	postac_id	int 	NOT NULL,
	zadanie_id 	int 	NOT NULL,
	CONSTRAINT postac_zadanie_pk PRIMARY KEY (postac_id, zadanie_id),
	CONSTRAINT postac_fk FOREIGN KEY (postac_id) REFERENCES postac(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT zadanie_fk FOREIGN KEY (zadanie_id) REFERENCES zadania(id)
);

