CREATE PROCEDURE ConsultaReserves (v_nom varchar(100))
BEGIN
select *
from reserves
where idcasa=v_nom;	
END
