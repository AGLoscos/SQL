CREATE FUNCTION ConsultaClient (v_nif varchar(9))
RETURNS varchar(50)
BEGIN
	declare v_existeix varchar(50);
    declare v_result int;
    
    select count(*) into v_result
    from clients
    where nif=v_nif;
    
    if v_result = 1 then
		set v_existeix='Aquest client esta donat d`alta';
	else
		set v_existeix='Aquest clien no existeix';
	end if;
    
RETURN v_existeix;
END
