CREATE FUNCTION ConsultaDataVols(v_data_sortida DATE, v_data_arribada DATE) RETURNS varchar(100)
BEGIN
    DECLARE v_num_vols INT;

    IF v_data_sortida >= v_data_arribada THEN
        RETURN 'La fecha de salida debe ser anterior a la fecha de llegada';
    ELSE
        SELECT COUNT(*) INTO v_num_vols
        FROM VOLS
        WHERE DATA_SORTIDA >= v_data_sortida AND DATA_ARRIBADA <= v_data_arribada;
        
        RETURN CONCAT('El número de vuelos entre ', v_data_sortida, ' y ', v_data_arribada, ' es: ', v_num_vols);
    END IF;
END;