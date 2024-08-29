CREATE PROCEDURE DadesCases ()
BEGIN
 declare num_registres int default 0;
 declare i int default 0;
 declare v_nom varchar(100);
 declare v_telefon varchar(12);
 declare v_preu int;
 
 declare ccases cursor for
	select f.nom, f.telefon, p.preu_i
    from fitxa_casa f
    inner join preus p on f.categoria=p.idcategoria;
    
    create table t_dadesCases(
		nom varchar(100),
        telefon varchar(12),
        preu int
    );
    open ccases;
    
    select count(*) into num_registres
    from fitxa_casa f
    inner join preus p on f.categoria=p.idcategoria;
    
    while i<num_registres do
		fetch ccases into v_nom, v_telefon, v_preu;
        insert into t_dadesCases
        values(v_nom, v_telefon,v_preu);
        set i=i+1;
        end while;
	select * from t_dadesCases;
    
    close ccases;
    
END
