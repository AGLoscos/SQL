CREATE FUNCTION CapacitatMayor () 
RETURNS INTEGER
BEGIN
	declare v_capacitat int;
    select max(capacitat) into v_capacitat
    from fitxa_casa;
RETURN v_capacitat;
END
