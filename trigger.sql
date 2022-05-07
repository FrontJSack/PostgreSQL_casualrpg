-- Gdy dodana jest nowa postać, automatycznie do bazy zostaje dodany ekwipunek przypisany do postaci
CREATE OR REPLACE FUNCTION add_eq()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
	AS
$$
BEGIN
	INSERT INTO ekwipunek(postac_id, ilosc_przedmiotow)
	VALUES(NEW.id, 0);
	RETURN NEW;
END;
$$
;

CREATE TRIGGER new_character_add
	AFTER INSERT
	ON postac
	FOR EACH ROW
	EXECUTE PROCEDURE add_eq();