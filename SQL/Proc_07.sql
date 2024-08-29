CREATE PROCEDURE NombresLlocsIntereses ()
BEGIN
create table T_NombreLlocsInteres(
nom varchar (50),
nombre_lloc int,
primary key(nom)
);

insert into T_NombreLlocsInteres
select f.nom, count(*)
from fitxa_casa f
inner join llocs_interes i on f.idcasa=i.idcasa
group by f.nom;

select *
from T_NombreLlocs;

drop table T_NombreLlocsInteres;
END
