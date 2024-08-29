DELIMITER $

CREATE TRIGGER ModificarAeropuerto
BEFORE UPDATE ON aeroports
FOR EACH ROW
BEGIN
    DECLARE num_vuelos INT;
    SET num_vuelos = (SELECT COUNT(*) FROM vols WHERE ORIGEN = OLD.NOM OR DESTI = OLD.NOM);
    
    IF num_vuelos > 0 THEN
        SELECT 'No se puede modificar el aeropuerto porque está asociado a uno o más vuelos.';
    END IF;
END;
$

DELIMITER ;
