CREATE FUNCTION NombreCasesRurals ()
RETURNS varchar(100)
BEGIN
 declare v_nombre int;
 select count(*) into v_nombre
 from fitxa_casa;
 
 return concat('el nombre de casas rurales es', v_nombre);
RETURN v_nombre;
END
