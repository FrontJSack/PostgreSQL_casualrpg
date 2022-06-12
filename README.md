Bazy danych – Projekt - Gra komputerowa | Jacek Leszczyński 2022r.

Baza danych przeznaczona jest do gry komputerowej RPG dla wielu graczy. Posiada ona pięć encji:
- postać
- statystyki
- zadania
- ekwipunek - przedmioty
Z czego dwie ostatnie są tabelami łączącymi.

Postać posiada własne statystyki oraz ekwipunek, w dodatku do postaci przypisane może być wiele zadań. Ekwipunek składa się z wielu przedmiotów.

Potencjalne grupy użytkowników:
Z bazy danych korzystać będzie tylko administrator w razie potrzeby jej edycji, prócz tego cała baza będzie zautomatyzowana i zaprojektowana pod konkretną rozgrywkę.

Wymagania funkcjonalne:
Baza danych ma przechowywać informacje o postaciach w grze, statystykach, zadaniach oraz przedmiotach należących do ekwipunku postaci.

Zgromadzone dane mają umożliwić realizowanie zadań: - Rozwój postaci w rozgrywce
- Możliwość zautomatyzowania doboru zadań dla gracza

Wymagania niefunkcjonalne:
-System zarządzania bazą danych - PostgresSQL 

(Możesz przetestować bazę danych na lokalnej maszynie lub https://sqliteonline.com/ wklejając pliki create.sql, insert.sql, trigger.sql i ex_trigger.sql, następnie wklejając wybrane zapytania z select.sql) 
