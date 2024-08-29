/*Trigger para añadir reservas de los viajes*/
DELIMITER $
CREATE TRIGGER trigger_afegir_reserves_viatges AFTER INSERT 
ON reserves_viatges FOR EACH ROW
BEGIN
    UPDATE viatges
    SET NUM_PLACES = NUM_PLACES - new.NUM_PLACES
    WHERE CODI = NEW.CODI_VIATGE;
END$	
DELIMITER ;
/*Trigger para eliminar las reservas de los viajes*/
DELIMITER $
CREATE TRIGGER trigger_eliminar_reserves_viatges AFTER DELETE ON reserves_viatges
FOR EACH ROW
BEGIN
    UPDATE viatges
    SET NUM_PLACES = NUM_PLACES + OLD.NUM_PLACES
    WHERE CODI = OLD.CODI_VIATGE;
END$
DELIMITER ;
/*Trigger para eliminar clientes con el dni antiguo*/
DELIMITER $
CREATE TRIGGER trigger_eliminar_client BEFORE DELETE ON clients
FOR EACH ROW
BEGIN

    DELETE FROM reserves_hotels
    WHERE NIF=OLD.NIF;
    DELETE FROM RESREVES_VIATGES 
    WHERE NIF_CLIENT = OLD.NIF;
    
END$
DELIMITER ;