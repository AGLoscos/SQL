CREATE PROCEDURE NombreOpinions (v_nom varchar(100))
BEGIN
	select count(*)
    from OPINIONS o
    inner join fitxa_casa f on f.idcasa=o.idcasa
    where f.nom=v_nom;
END
