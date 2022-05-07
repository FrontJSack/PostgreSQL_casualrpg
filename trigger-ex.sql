-- Gdy dodana jest nowa postać, automatycznie do bazy zostaje dodany ekwipunek przypisany do postaci
INSERT INTO postac (nazwa, rasa, poziom, pd) VALUES ('Bubbels', 'Nieumarły', 0, 0);

SELECT * FROM ekwipunek;