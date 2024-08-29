CREATE PROCEDURE CasasRuralesProvincia (v_provincia varchar(50))
BEGIN
	select *
    from fitxa_casa
    where Provincia=v_provincia;
END
