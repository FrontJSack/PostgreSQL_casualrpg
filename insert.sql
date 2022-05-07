INSERT INTO postac (nazwa, rasa, poziom, pd) VALUES ('Wilfred', 'Wiking', 1, 0);
INSERT INTO postac (nazwa, rasa, poziom, pd) VALUES ('Reimer', 'Krasnolud', 3, 3750);
INSERT INTO postac (nazwa, rasa, poziom, pd) VALUES ('Kiren', 'Krasnolud', 2, 2500);
INSERT INTO postac (nazwa, rasa, poziom, pd) VALUES ('Callah', 'Wilkołak', 1, 270);
INSERT INTO postac (nazwa, rasa, poziom, pd) VALUES ('Artrim', 'Ork', 1, 50);
INSERT INTO postac (nazwa, rasa, poziom, pd) VALUES ('Kelsrin', 'Wiking', 4, 4200);
INSERT INTO postac (nazwa, rasa, poziom, pd) VALUES ('Zaxus', 'Troll', 1, 420);
INSERT INTO postac (nazwa, rasa, poziom, pd) VALUES ('Xorin', 'Nieumarły', 1, 500);

INSERT INTO statystyki (postac_id, sila, zwinnosc, szczescie, wytrzymalosc, inteligencja) VALUES (1, 10, 7, 4, 10, 7);
INSERT INTO statystyki (postac_id, sila, zwinnosc, szczescie, wytrzymalosc, inteligencja) VALUES (2, 15, 5, 5, 7, 10);
INSERT INTO statystyki (postac_id, sila, zwinnosc, szczescie, wytrzymalosc, inteligencja) VALUES (3, 15, 5, 5, 7, 10);
INSERT INTO statystyki (postac_id, sila, zwinnosc, szczescie, wytrzymalosc, inteligencja) VALUES (4, 7, 15, 7, 6, 5);
INSERT INTO statystyki (postac_id, sila, zwinnosc, szczescie, wytrzymalosc, inteligencja) VALUES (5, 25, 3, 3, 15, 5);
INSERT INTO statystyki (postac_id, sila, zwinnosc, szczescie, wytrzymalosc, inteligencja) VALUES (6, 10, 7, 4, 10, 7);
INSERT INTO statystyki (postac_id, sila, zwinnosc, szczescie, wytrzymalosc, inteligencja) VALUES (7, 35, 2, 5, 8, 2);
INSERT INTO statystyki (postac_id, sila, zwinnosc, szczescie, wytrzymalosc, inteligencja) VALUES (8, 5, 8, 2, 4, 5);

INSERT INTO zadania (tresc, nagroda) VALUES ('Zabij pierwszego przeciwnika', '1000 Punktów doświadczenia');
INSERT INTO zadania (tresc, nagroda) VALUES ('Zdobądź 5 różnych przedmiotów', '2000 Punktów doświadczenia');
INSERT INTO zadania (tresc, nagroda) VALUES ('Zabij pierwszego przeciwnika', '1000 Punktów doświadczenia');
INSERT INTO zadania (tresc, nagroda) VALUES ('Dotrzyj do miasta', 'Miecz zagłady');
INSERT INTO zadania (tresc, nagroda) VALUES ('Zdobądź 5 różnych przedmiotów', '2000 Punktów doświadczenia');
INSERT INTO zadania (tresc, nagroda) VALUES ('Zabij 5 wilków', '1500 Punktów doświadczenia');
INSERT INTO zadania (tresc, nagroda) VALUES ('Porozmawiaj z Kowalem', 'Młot kowala');
INSERT INTO zadania (tresc, nagroda) VALUES ('Porozmawiaj z Mędrcem', '500 Punktów doświadczenia');

INSERT INTO ekwipunek (postac_id, ilosc_przedmiotow) VALUES (1, 2);
INSERT INTO ekwipunek (postac_id, ilosc_przedmiotow) VALUES (2, 1);
INSERT INTO ekwipunek (postac_id, ilosc_przedmiotow) VALUES (3, 1);
INSERT INTO ekwipunek (postac_id, ilosc_przedmiotow) VALUES (4, 2);
INSERT INTO ekwipunek (postac_id, ilosc_przedmiotow) VALUES (5, 1);
INSERT INTO ekwipunek (postac_id, ilosc_przedmiotow) VALUES (6, 4);
INSERT INTO ekwipunek (postac_id, ilosc_przedmiotow) VALUES (7, 1);
INSERT INTO ekwipunek (postac_id, ilosc_przedmiotow) VALUES (8, 0);

INSERT INTO przedmioty (nazwa, atak, obrona, wytrzymalosc) VALUES ('Miecz zagłady', 45, NULL, 50);
INSERT INTO przedmioty (nazwa, atak, obrona, wytrzymalosc) VALUES ('Młot kowala', 5, NULL, 100);
INSERT INTO przedmioty (nazwa, atak, obrona, wytrzymalosc) VALUES ('Tarcza strażnika', NULL, 25, 250);
INSERT INTO przedmioty (nazwa, atak, obrona, wytrzymalosc) VALUES ('Miecz dwuręczny', 30, NULL, 40);
INSERT INTO przedmioty (nazwa, atak, obrona, wytrzymalosc) VALUES ('Miecz krótki', 5, NULL, 30);
INSERT INTO przedmioty (nazwa, atak, obrona, wytrzymalosc) VALUES ('Topór orka', 65, NULL, 80);
INSERT INTO przedmioty (nazwa, atak, obrona, wytrzymalosc) VALUES ('Excalibur', 100, NULL, 75);
INSERT INTO przedmioty (nazwa, atak, obrona, wytrzymalosc) VALUES ('Nagolennik', NULL, 50, 150);

INSERT INTO ekwipunek_przedmioty (ekwipunek_id, przedmiot_id) VALUES (1, 1);
INSERT INTO ekwipunek_przedmioty (ekwipunek_id, przedmiot_id) VALUES (1, 2);
INSERT INTO ekwipunek_przedmioty (ekwipunek_id, przedmiot_id) VALUES (2, 1);
INSERT INTO ekwipunek_przedmioty (ekwipunek_id, przedmiot_id) VALUES (3, 6);
INSERT INTO ekwipunek_przedmioty (ekwipunek_id, przedmiot_id) VALUES (5, 3);
INSERT INTO ekwipunek_przedmioty (ekwipunek_id, przedmiot_id) VALUES (7, 2);

INSERT INTO postac_zadania (postac_id, zadanie_id) VALUES (1, 1);
INSERT INTO postac_zadania (postac_id, zadanie_id) VALUES (1, 2);
INSERT INTO postac_zadania (postac_id, zadanie_id) VALUES (2, 3);
INSERT INTO postac_zadania (postac_id, zadanie_id) VALUES (3, 4);
INSERT INTO postac_zadania (postac_id, zadanie_id) VALUES (4, 5);
INSERT INTO postac_zadania (postac_id, zadanie_id) VALUES (5, 1);
INSERT INTO postac_zadania (postac_id, zadanie_id) VALUES (6, 7);
INSERT INTO postac_zadania (postac_id, zadanie_id) VALUES (7, 6);