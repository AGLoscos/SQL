CREATE DEFINER=`root`@`localhost` FUNCTION `AfegirOpinio`(v_idcasa int, v_opinio varchar(256), v_data date) RETURNS varchar(200)
BEGIN
declare v_result int;

select count(*) into v_result
from opinions
where idcasa=v_idcasa;

 if v_result < 3 then
		insert opinions(idcasa, opinio, data) values (v_idcasa, v_opinio, v_data);
		return concat('S’ha afegit l’opinió en la casa rural ', v_idcasa ) ;
	else
		return concat('L’opinió no s’ha pogut afegir a la casa rural anomenada ', v_idcasa ,' ja hi ha tres opinions.');
	end if;

END