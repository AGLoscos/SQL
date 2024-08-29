CREATE DEFINER=`root`@`localhost` FUNCTION `ConsultarInfoVol`(vuelo_cod varchar(6)) RETURNS varchar(500) CHARSET utf8mb4
BEGIN
    DECLARE vuelo_info VARCHAR(500);
    SELECT CONCAT_WS('\n',
                  'Código: ', CODI,';',
                  'Origen: ', ORIGEN,';',
                  'Destino: ', DESTI, ';',
                  'Fecha de salida: ', DATA_SORTIDA, ';',
                  'Hora de salida: ', HORA_SORTIDA,';',
                  'Fecha de llegada: ', DATA_ARRIBADA,';',
                  'Hora de llegada: ', HORA_ARRIBADA,';',
                  'Compañía: ', COMPANYIA,';'
                  'Número de plazas disponibles: ', NUM_PLACES, ';') INTO vuelo_info
    FROM vols
    WHERE CODI = vuelo_cod;
    RETURN vuelo_info;
END