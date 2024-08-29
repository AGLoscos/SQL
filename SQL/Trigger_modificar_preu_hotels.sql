Delimiter $
create trigger trigger_modificar_preus_hotels
after insert on ofertes_hotels
for each row
begin
		update ofertes_hotels
        set preu_individual = new.preu_individual
        where Codi_hotel = old.codi_hotel;
end $
delimiter ;