CREATE FUNCTION ConsultaReservesVols (v_codiVol varchar(6))
RETURNS varchar(100)
BEGIN
declare v_numeroPlaces int;
select count(*) into v_numeroPlaces
from reserves_viatges
where codi_viatge=v_codiVol;

	if v_numeroPlaces =0  then
		return concat('No hi han places lliures per el vol', v_codiVol ) ;
	else
		return concat('Hi han ', v_numeroPlaces ,' places lliures en el vol ', v_codiVol);
	end if;
END
