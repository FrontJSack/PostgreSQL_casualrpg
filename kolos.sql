--- zad 1 ---

--- zad 2 ---

SELECT * FROM osoba WHERE imie LIKE 'J%';

--- zad 3 ---

SELECT LOGIN, CURRENT_DATE ostatnia_zmiana_hasla AS dni_od_ostatniej_zmiany_hasla FROM konto;

--- zad 4 ---

SELECT LOGIN, nr_indeksu from konto inner join student on konto.id = student.id;

--- zad 5 ---

UPDATE konto SET zmiana_hasla = 't' WHERE wlasciciel IN(SELECT dane FROM pracownik);

--- zad 6 ---

SELECT * FROM osoba ((INNER JOIN student ON student.dane = osoba.id) INNER JOIN konto ON osoba.id = konto.wlasciciel WHERE nr_indeksu NOT IN) SELECT;

--- zad 7 ---

SELECT * FROM nr_indeksu COUNT (nr_indeksu) FROM student GROUP BY nr_indeksu HAVING UNIQUE nr_indeksu;

--- zad 8 ---

SELECT przedmiot.nazwa FROM ((pracownik INNER JOIN przedmiot ON pracownik.id = przedmiot.nauczyciel) INNER JOIN konto ON konto.wlasciciel = pracownik.dane) INNER JOIN osoba ON osoba.id = konto.wlasciciel WHERE imie LIKE 'Szymon' AND nazwisko LIKE 'Zieliński';

--- zad 9 ---

SELECT * FROM ((pracownik INNER JOIN przedmiot ON pracownik.id = przedmiot.nauczyciel) INNER JOIN konto ON konto.wlasciciel = pracownik.dane) INNER JOIN osoba ON osoba.id = konto.wlasciciel;

--- zad 10 ---
