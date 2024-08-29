CREATE FUNCTION ConsultaPreu (v_preu_inicial float, v_preu_final float)
RETURNS varchar(100)
BEGIN
	declare v_numerocasas int;
    
    if v_preu_inicial > v_preu_final then
		return 'Cal que el preu final sigui major que el preu inicial';
	else
		select count(*) into v_numerocasas
        from fitxa_casa f
        inner join preus p on p.idcategoria= f.categoria
        where preu_i>= v_preu_inicial and preu_f<= v_preu_final;
        return concat(v_numerocasas);
	end if;
END
