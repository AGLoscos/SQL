DELIMITER $
CREATE TRIGGER trigger_eliminar_hotel
BEFORE DELETE ON hotels
FOR EACH ROW
BEGIN
 DELETE FROM reserves_hotels
 WHERE CODI=OLD.CODI;
  DELETE FROM ofertes_hotels
 WHERE CODI_hotel=OLD.CODI;
END $
DELIMITER ;