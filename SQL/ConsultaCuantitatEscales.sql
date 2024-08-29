CREATE PROCEDURE ConsultaCuantitatEscales (v_codiVol varchar(6))
BEGIN
	select num_escala, aeroport
    from escales
    where Codi_vol=v_codiVol;
END
