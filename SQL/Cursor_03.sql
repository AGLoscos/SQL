CREATE DEFINER=`root`@`localhost` FUNCTION `CapacitatMinima`() RETURNS int
BEGIN
DECLARE numregs int;
DECLARE i int default 0;
DECLARE v_capacitatminima int;
DECLARE  min_capacitat int;

declare ccapacitat cursor for select CAPACITAT  from fitxa_casa;

select count(*) into numregs
from fitxa_casa;

open ccapacitat;

fetch ccapacitat into v_capacitatminima;

set min_capacitat = v_capacitatminima;

while i<numregs-1 do
	fetch ccapacitat into v_capacitatminima;
    if min_capacitat> v_capacitatminima then
		set min_capacitat = v_capacitatminima;
	end if;
    set i=i+1;
end while;

close ccapacitat;

return min_capacitat;


END