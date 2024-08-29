/*1*/
/*Crea un tipus de dades tipus de dada compost per emmagatzemar les
dades referents a formació.*/
create type  T_FORMACIO As (
		Codi int,
		Nom varchar(100),
		fromador varchar(100),
		Horas int,
		data date
);
/*Crea un tipus de dades tipus de dada compost per emmagatzemar les
dades referents a llibre.*/
create type T_llibre as( 
	titol varchar(100),
	editorial varchar(100),
	isbn varchar(13),
	idioma varchar(50),
	autor varchar(100),
	n_edicions int
);
/*Crea una taula anomenada FORMACIONS que emmagatzemi objectes de
tipus formacio i indica que el camp codi serà la clau principal.*/
create table formacions of t_formacio(
	Primary key (codi)
);
/*Crea una taula anomenada LLIBRES que emmagatzemi objectes de tipus
llibre i indica que el camp titol serà la clau principal.*/
create table llibres of t_llibre(
	primary key (titol)
);


/*2*/


/*Crea un tipus de dades compost per emmagatzemar les dades referents a
l’adreça.*/
create type t_adreca as (
	carrer varchar (100),
	codipostal varchar(5),
	ciutat varchar(50)
);
/*Crea un tipus de dades compost per emmagatzemar les dades referents a
un client tenint en compte el tipus de dades creat d’adreça.*/
create type t_client as (
	numero int,
	nom varchar(100),
	adreca t_adreca,
	telefon varchar(12)
);
/*Crea una taula anomenada CLIENTS que emmagatzemi objectes de tipus
client i indica que el camp número de client serà la clau principal.*/
create table clients of t_client(
	primary key(numero)
);
/*Crea una taula anomenada COMANDES, utilitza el tipus de dada adreça
creat anteriorment i indica que l’atribut codi serà la clau principal.*/
create table comander (
	codi int,
	numero_client int,
	adreca t_adreca,
	primary key (codi)
);



/*3*/

/*Crea un tipus de dades compost per emmagatzemar les dades referents a
dadespersonals, tenint en compte el tipus de dades adreça de l’exercici
anterior.*/
create type t_dadespersonals as(
	nom varchar(50),
	carrer varchar(50),
	ciutat t_adreca,
	codipostal t_adreca,
	telefon varchar(12)
);

/*Crea un tipus de dades compost per emmagatzemar les dades referents a
un estudiant tenint en compte el tipus de dades dadespersonals.*/
create type t_estudiant as(
	dni varchar(9),
	nom t_dadespersonals,
	carrer t_dadespersonals,
	ciutat t_dadespersonals,
	codipostal t_dadespersonals,
	telefon t_dadespersonals,
	carrera varchar (20),
	grup int,
	grau int
);

/*Crea una taula anomenada ESTUDIANTS que emmagatzemi objectes
estudiants i indica que el camp dni serà la clau principal.*/
create table estudiants of t_estudiant(
	primary key(dni)
);

/*4*/
/*Crea un tipus de dades compost anomenat qualificacions que
emmagatzemi el nom de la matèria i la nota.*/
create type T_qualificacions as(
	nom varchar(50),
	nota decimal
);

/*Crea una taula anomenada Estudiants_Notes que permeti emmagatzemar
el dni, nom i cognoms i les qualificacions que ha tret en les matèries que
ha cursat. Posa l’atribut dni com a clau principal, i el nom i cognoms com a
obligatori d’introduir.*/
create table estudiants_notes(
	dni varchar(9),
	nom_cognoms (100),
	qualificacions t_qualificacions(10),
	primary key (dni) 
);

/*Insereix dos registres en la taula.*/
insert into estudiants_notes()
values ("695695365","Antonio Miguel", "Java", "8.0" ),
	   ("695845362","Jose Maria","SQL","5.5" );


/*5*/
create type t_adreca_postal as(
	carrer varchar(100),
	codi_postal varchar(5),
	ciutat varchar(20)
);
/**/
create table Estudiants_centre(
	dni varchar(9),
	num_expedient int unique,
	nom_cognoms varchar(50) not null,
	telefon varchar(12) not null,
	adreca_electronica varchar(30) unique,
	areces t_adreca_postal(2),
	primary key (dni)
);

/*Insereix un nou registre només amb una adreça.*/
insert into estudiants_centre
values();

/*Modifica el registre anterior per introduir una nova adreça. Investiga si es
pot fer i com.*/
update estudiants_centre
set adreces(2) = row("")
where dni = ;

/*Consulta la informació emmagatzemada.*/
select *
from Estudiants_centre



/*6*/
/*Donat el tipus de dades client i la creació de la taula CLIENTS:*/

CREATE TYPE client AS (
numero integer,
nom varchar(15),
carrer varchar(25),
ciutat varchar(15),
cod_pos varchar(5),
telefon varchar(15)
);
CREATE TABLE CLIENTS1 OF client (
PRIMARY KEY (numero));

--a
/*Crea una taula CLIENTS_VIP que derivi de la taula CLIENTS.*/
create table clients_vip(
	descompte int,
	punts_acumulats int 
)inherits (clients1);

/*Si es volgués insereix la següent informació:*/
INSERT INTO clients_vip 
values (10,'manuel', 'ripollet 15', 'montcada','08110', '695362152', 10, 54);
/*En quina taula ho faríem, en la taula pare o en la taula fill, o en totes dues?*/
--o farem a la taula clients_vip ja que tambe s'aplica a la taula de clients

INSERT INTO clients 
values (00103,'Oscar', 'Pujol 40', 'Tarragona','43001', '628141652');
/*En quina taula ho faríem, en la taula pare o en la taula fill, o en totes dues?*/
--NOMES O FAREM A LA DE CLIENT JA QUE NO S'APLICARA A LA DE CLIENT VIP PERQUE NO TE DESCOMPTE NI PUNTS ACUMULATS
select *
from clients_vip;
select*
from clients;



/*7*/
/*Crea un tipus de dades compost per emmagatzemar les dades referents a
alumne.*/
create type t_alumno as (
	id int,
	nom varchar(20),
	carrer varchar(20),
	carrera varchar(20),
	grup varchar(3),
	grau int
)
/*Crea una taula anomenada alumnes_2020 que emmagatzemi objectes
alumne i indica que el camp id serà la clau principal.*/
create table alumnes_2020 of t_alumne(
	primary key (id)
);	
	
/*Crea una taula anomenada alumnes_practiques que emmagatzemi un
camp anomenat empresa i hereti els atributs de la taula alumnes_2020.*/
create table alumnes_practiques(
	empresa varchar(30)
)inherits alumnes_2020;


/*8*/
/*Agafa el tipus de dades compost adreça creat anteriorment.*/
create type t_adreca as (
	carrer varchar (100),
	codipostal varchar(5),
	ciutat varchar(50)
);
/*Crea una taula afegint les següent restriccions:*/
create table comandes(
	numero int,
	num_client int unique,
	adreca t_adreca not null,
	constraint cp_numero primary key (numero)
);


/*9*/
/*Crea la taula AEROPORTS*/
create table aeroports(
	numero int,
	ciutat varchar(50) not null,
	constraint cp_aeroport primary key (numero)
);
/*Crea la taula VOLS*/
create table vols (
	numero int,
	aeroport_sortida int not null,
	aeroport_arribada int not null,
	data_hora timestamp unique,
	constraint cp_vols primary key(numero),
	constraint ce_aeroports_s
		foreign key (aeroport_sortida) references aeroports (numero),
	constraint ce_aeroports_a
		foreing key (aeroport_arribada) references aeroport (numero)
);