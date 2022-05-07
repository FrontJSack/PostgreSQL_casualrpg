-- Zapytanie wyświetla ilość przedmiotów jaką posiada dana postać
SELECT ekwipunek.ilosc_przedmiotow, postac.nazwa FROM ekwipunek JOIN postac ON ekwipunek.postac_id = postac.id;

-- Zapytanie wyświetlające wszystkie bronie posiadające więcej niż 20 punktów ataku
SELECT * FROM przedmioty WHERE atak > 20;

-- Zapytanie wyświetlające nagrody za zadania w których gracz musi zabić jakąś postać
SELECT nagroda FROM zadania WHERE tresc LIKE 'Zabij%';

-- Zapytanie wyświetlające przedmioty które dodają tylko punkty do ataku
SELECT nazwa FROM przedmioty WHERE obrona IS NULL;

-- Usunięcie wszystkich postaci rasy Krasnolud, który posiadają poziom niższy niż 1
DELETE FROM postac WHERE rasa LIKE 'Krasnolud' AND poziom < 1; 

-- Aktualizacja punktów ataku dla każdej broni typu 'miecz'
UPDATE przedmioty SET atak = atak+10 WHERE nazwa LIKE 'Miecz%'; 

-- Tworzenie widoku w którym widać poziomy każdej z postaci
CREATE VIEW poziomy_postaci AS SELECT id, nazwa, poziom FROM postac;

-- Zapytanie negatywne wyswietlające ilość przedmiotów postaci które mają poniżej 5 poziomu
SELECT ilosc_przedmiotow FROM ekwipunek WHERE postac_id NOT IN (SELECT id FROM postac WHERE poziom > 5);

-- Zapytanie negatywne wyświetlające wszystkie bronie które dodają punkty ataku
SELECT przedmioty.nazwa FROM przedmioty LEFT JOIN ekwipunek_przedmioty ON przedmioty.id = ekwipunek_przedmioty.przedmiot_id WHERE przedmioty.obrona IS NULL;

-- Zapytanie wyświetlające ilość graczy którzy posiadają przypisane zadanie o danej treści
SELECT count(*) IlośćPostaci, tresc FROM zadania group by tresc;

