CREATE DEFINER=`root`@`localhost` PROCEDURE `DadesValoracions`()
BEGIN
declare i int default 0;
declare v_opinions int;
declare v_idcasa int;
declare num_registres int;
declare ccases cursor for
select idcasa
from fitxa_casa;
	
	ALTER TABLE Fitxa_casa
    ADD column valoracions int  ;


open ccases;
select count(*) into num_registres
from fitxa_casa;
	while i<num_registres do
    fetch ccases into v_idcasa;
 
	select count(*) into v_opinions
    from opinions
    where idcasa=v_idcasa;
    
    update fitxa_casa
    set valoracions=v_opinions
    where idcasa=v_idcasa;
    set i=i+1;
    end while;
    select * from fitxa_casa;

END