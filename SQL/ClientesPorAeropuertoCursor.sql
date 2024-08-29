CREATE PROCEDURE ClientesPorAeropuertoConCursor(IN aeropuerto VARCHAR(30))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE clienteNIF VARCHAR(12);
    DECLARE clienteNombre VARCHAR(30);
    DECLARE clienteDireccion VARCHAR(50);
    DECLARE clienteCP VARCHAR(5);
    DECLARE clienteCiudad VARCHAR(30);
    DECLARE clienteProvincia VARCHAR(25);
    DECLARE clienteTelefono VARCHAR(12);
    DECLARE clienteEmail VARCHAR(50);
    
    DECLARE cursor_clientes CURSOR FOR 
        SELECT DISTINCT c.*
        FROM clients c
        INNER JOIN vols v ON c.NIF = v.CODI
        WHERE v.ORIGEN = aeropuerto;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN cursor_clientes;
    
    WHILE NOT done DO
        FETCH cursor_clientes INTO clienteNIF, clienteNombre, clienteDireccion, clienteCP, clienteCiudad, clienteProvincia, clienteTelefono, clienteEmail;
        
        IF NOT done THEN
            SELECT clienteNIF, clienteNombre, clienteDireccion, clienteCP, clienteCiudad, clienteProvincia, clienteTelefono, clienteEmail;
        END IF;
    END WHILE;
    
    CLOSE cursor_clientes;
END;
