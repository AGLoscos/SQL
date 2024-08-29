CREATE DEFINER=`root`@`localhost` FUNCTION `ConsultaNomCasaRural`(v_nom varchar(100)) RETURNS varchar(200) CHARSET utf8mb4
BEGIN

declare v_result int;
select count(*) into v_result
    from fitxa_casa
    where nom=v_nom;
  if v_result > 1 then
		return concat('La casa rural anomenada ', v_nom ,' ja existeix a la base de dades') ;
	else
		return concat('La casa rural anomenada ', v_nom ,' no existeix a la base de dades');
	end if;


END