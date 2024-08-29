CREATE PROCEDURE ConsultaClients ()
BEGIN
-- Declarar variables para almacenar los datos de cada fila
DECLARE cliente_nif VARCHAR(12);
DECLARE cliente_nom VARCHAR(30);
DECLARE cliente_cursor CURSOR FOR
    SELECT NIF, NOM FROM clients;
OPEN cliente_cursor;
read_loop: LOOP
    FETCH cliente_cursor INTO cliente_nif, cliente_nom;
        IF done THEN
        LEAVE read_loop;
    END IF;
        SELECT CONCAT('NIF: ', cliente_nif, ', Nombre: ', cliente_nom) AS Cliente_Info;
END LOOP;
CLOSE cliente_cursor;

END