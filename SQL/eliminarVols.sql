CREATE PROCEDURE EliminarDadesVols ()
BEGIN
declare i int default 0;
declare v_data_sortida date;
declare num_vols int;

declare celiminar cursor for select data_sortida from vols;

select count(*) into num_vols
    FROM viatges;
open celiminar;
	
    while i < num_vols do
		 FETCH celiminar INTO v_Data_Sortida;
		IF v_data_sortida < '2009-11-20' THEN
            DELETE FROM vols WHERE data_sortida = v_data_sortida;
        END IF;

        SET i = i + 1;
    END WHILE;

		
close celiminar;
select * from vols;
END