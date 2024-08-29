CREATE DEFINER=`root`@`localhost` PROCEDURE `dadesviatges`()
BEGIN
    DECLARE v_origen VARCHAR(30);
    DECLARE v_desti VARCHAR(30);
    DECLARE v_Data_Sortida DATE;
    DECLARE v_Data_Arribada DATE;
    DECLARE i INT DEFAULT 0;
    DECLARE num_vols INT DEFAULT 0;

    DECLARE cvols CURSOR FOR
        SELECT origen, desti, Data_Sortida, Data_Arribada
        FROM viatges;
	 CREATE TABLE IF NOT EXISTS t_dadesviatges (
        Origen VARCHAR(30),
        Desti VARCHAR(30),
        Data_sortida DATE,
        Data_arribada DATE
    );

    OPEN cvols;

    SELECT COUNT(*) INTO num_vols
    FROM viatges;

    WHILE i < num_vols DO
        FETCH cvols INTO v_origen, v_desti, v_Data_Sortida, v_Data_Arribada;
        INSERT INTO t_dadesviatges (Origen, Desti, Data_sortida, Data_arribada)
        VALUES (v_origen, v_desti, v_Data_Sortida, v_Data_Arribada);
        SET i = i + 1;
    END WHILE;

    CLOSE cvols;
    select * from t_dadesviatges;
END