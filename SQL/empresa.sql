/*a. Crea l’script Empresa.sql amb la següent informació:*/
CREATE TABLE departamentos (
id integer,
nombre varchar(150),
PRIMARY KEY(id)
);

CREATE TYPE direccion_postal AS (
calle varchar(150),
numero integer,
provincia varchar(100),
cp varchar(5)
);

CREATE TABLE empleados (
dni varchar(9),
nombre varchar(150),
fecha_nacimiento date,
direccion direccion_postal,
telefonos varchar[],
departamento integer,
salario integer,
PRIMARY KEY(dni),
FOREIGN KEY (departamento) REFERENCES departamentos (id)
);

/*b. Afegeix dos nous departaments.*/
insert into departamentos values (1,'contables'),
								 (2,'traders');

/*c.Afegeix tres nous empleats que treballin en els departaments creats
anteriorment.*/
insert into empleados values('92365412W', 'Pepe Viyuela', '1963-6-2',ROW('Carrer esquirol', 10, 'Montcada', '08110')::direccion_postal, array['963369326','965612547'],1,30000),
							('52421536S', 'Manuel Carrasco', '1972-7-30', ROW('carretera ripollet', 12, 'Barcelona', '08001')::direccion_postal, array['965236512','985484523'],2,90000),
							('23651425V', 'Jordi Garzon', '1964-3-01', ROW('carrer montserrat', 1, 'santa perpertua','08017')::direccion_postal, array['965251456','965878945'],1,35000);
							
/*d. Crea una funció que retorni el nombre d’empleats que hi ha. Anomena a la
funció ComptaEmpleats.*/
Create function ComptaEmpleats()
returns int as $$
declare 
	nombre_empleats int;
begin 
	select count(*) into nombre_empleats from empleados;
	return nombre_empleats;
end;
$$ language plpgsql;

/*e. Crea una funció que retorni el salari total de tots els empleats d’un mateix
departament. El nom del departament es passarà per paràmetre a la funció.
Anomena a la funció SalariTotal.*/
Create function SalariTotal(nom_dept varchar)
returns int as $$
declare
	salari_total int;
begin
	select sum(e.salario) into salari_total from empleados e inner join departamentos d on e.departamento = d.id where d.nombre = nom_dept;
	return salari_total;
end;
$$ language plpgsql;

/*f. Crea una funció que incrementi un 10% el salari de tots els empleats d’un
mateix departament. El nom del departament es passarà per paràmetre a la
funció. Anomena a la funció IncrementaSalari.*/

create function incrementarsalari(nom_dept varchar)
returns void as $$
begin 
	update empleados e set salario = salario * 1.10 from departamentos d where e.departamento = d.id and d.nombre = nom_dept;
end;
$$ language plpgsql;
