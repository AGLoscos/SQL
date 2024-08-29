/*
	Nom del fitxer: BD_Zoologic.sql
	Nom de la base de dades: BD_Zoologic

	Nom dels components dels grup: Eric Hernández, Albert Grau, Adrià Garzón
	Data de creació: 16/05/2024
*/

/*-----Creació de l’estructura ------*/

		CREATE TYPE ANIMALS AS (
			ID INTEGER,
			NOM VARCHAR(20),
			ESPECIE VARCHAR(50),
			DATA_NAIXEMENT DATE,
			SEXE CHAR(1)
		);

		CREATE TABLE PERSONAL (
			ID VARCHAR(9),
			NOM_COGNOM VARCHAR(50),
			DATA_NAIXEMENT DATE,
			SEXE CHAR(1)
		);

		CREATE TABLE CUIDADORS (
			ANIMALS_ASIGNATS VARCHAR(250),
			ANIMAL ANIMALS[]
		) INHERITS (PERSONAL);

		CREATE TABLE GUIES (
			RUTES VARCHAR(250)
		) INHERITS (PERSONAL);

		CREATE TABLE HERBÍVOR (
			ID VARCHAR(9) PRIMARY KEY UNIQUE NOT NULL,
			HABITACLE VARCHAR(50),
			ANIMAL ANIMALS[]
		) INHERITS (CUIDADORS);

		CREATE TABLE CARNÍVOR (
			ID VARCHAR(9) PRIMARY KEY UNIQUE NOT NULL,
			HABITACLE VARCHAR(50),
			ANIMAL ANIMALS[]
		) INHERITS (CUIDADORS);

		CREATE TABLE OMNÍVOR (
			ID VARCHAR(9) PRIMARY KEY UNIQUE NOT NULL,
			HABITACLE VARCHAR(50),
			ANIMAL ANIMALS[]
		) INHERITS (CUIDADORS);

/*-----Fi de Creació de l'estructura-----*/

/*-----Inserció de dades ------------*/

		INSERT INTO PERSONAL (ID, NOM_COGNOM, DATA_NAIXEMENT, SEXE) VALUES 
		('123456789', 'Juan Pérez', '1985-06-15', 'M'),
		('987654321', 'María López', '1990-12-22', 'F'),
		('654321987', 'Ana Torres', '1987-03-14', 'F'),
		('123789456', 'Pablo Gómez', '1992-08-30', 'M'),
		('135792468', 'Laura Martínez', '1990-01-20', 'F');

		INSERT INTO GUIES (ID, NOM_COGNOM, DATA_NAIXEMENT, SEXE, RUTES) VALUES 
		('246810121', 'Carlos Martínez', '1980-03-10', 'M', 'Ruta de los Herbívoros, Ruta de los Carnívoros'),
		('369852147', 'Raúl Sánchez', '1978-05-22', 'M', 'Ruta de los Omnívoros, Ruta Nocturna'),
		('852963741', 'Isabel Ruiz', '1991-12-01', 'F', 'Ruta de los Animales del Agua, Ruta de los Bosques'),
		('951357468', 'Sof  ía Gómez', '1983-07-23', 'F', 'Ruta de los Primates, Ruta de los Desiertos'),
		('753951852', 'David Torres', '1979-11-11', 'M', 'Ruta de los Reptiles, Ruta de los Pantanos');

		INSERT INTO HERBÍVOR (ID, HABITACLE, ANIMAL, ANIMALS_ASIGNATS, NOM_COGNOM, DATA_NAIXEMENT, SEXE) VALUES 
		('1', 'Pradera', ARRAY[ROW(1, 'Jirafa', 'Giraffa camelopardalis', '2010-05-01', 'F')::ANIMALS, ROW(2, 'Elefante', 'Loxodonta africana', '2008-07-11', 'M')::ANIMALS], 
			'1,2', 'Lucía Fernández', '1975-04-22', 'F'),
		('4', 'Bosque', ARRAY[ROW(7, 'Ciervo', 'Cervus elaphus', '2015-09-10', 'M')::ANIMALS, ROW(8, 'Cebra', 'Equus quagga', '2016-03-25', 'F')::ANIMALS], 
			'7,8', 'Claudia López', '1984-11-03', 'F'),
		('7', 'Selva', ARRAY[ROW(13, 'Gorila', 'Gorilla gorilla', '2013-11-30', 'M')::ANIMALS, ROW(14, 'Antílope', 'Antilope cervicapra', '2012-02-14', 'F')::ANIMALS], 
			'13,14', 'Marta Sánchez', '1988-05-19', 'F'),
		('10', 'Montaña', ARRAY[ROW(19, 'Cabra Montés', 'Capra pyrenaica', '2010-08-22', 'F')::ANIMALS, ROW(20, 'Yak', 'Bos grunniens', '2011-09-10', 'M')::ANIMALS], 
			'19,20', 'Pedro Ramírez', '1979-12-30', 'M'),
		('13', 'Sabana', ARRAY[ROW(25, 'Ñu', 'Connochaetes taurinus', '2014-07-15', 'M')::ANIMALS, ROW(26, 'Búfalo', 'Syncerus caffer', '2013-06-05', 'F')::ANIMALS], 
			'25,26', 'Sonia Vega', '1985-03-21', 'F');

		INSERT INTO CARNÍVOR (ID, HABITACLE, ANIMAL, ANIMALS_ASIGNATS, NOM_COGNOM, DATA_NAIXEMENT, SEXE) VALUES 
		('2', 'Sabana', ARRAY[ROW(3, 'León', 'Panthera leo', '2012-08-15', 'M')::ANIMALS, ROW(4, 'Tigre', 'Panthera tigris', '2011-11-05', 'F')::ANIMALS], 
			'3,4', 'Miguel García', '1982-01-19', 'M'),
		('5', 'Selva', ARRAY[ROW(9, 'Jaguar', 'Panthera onca', '2014-04-19', 'F')::ANIMALS, ROW(10, 'Puma', 'Puma concolor', '2013-12-02', 'M')::ANIMALS], 
			'9,10', 'Sergio Ramírez', '1985-07-18', 'M'),
		('8', 'Desierto', ARRAY[ROW(15, 'Guepardo', 'Acinonyx jubatus', '2011-05-05', 'F')::ANIMALS, ROW(16, 'Hiena', 'Crocuta crocuta', '2012-10-10', 'M')::ANIMALS], 
			'15,16', 'Raquel Ortiz', '1991-06-29', 'F'),
		('11', 'Pantano', ARRAY[ROW(21, 'Cocodrilo', 'Crocodylus niloticus', '2010-04-14', 'M')::ANIMALS, ROW(22, 'Serpiente', 'Python bivittatus', '2011-11-23', 'F')::ANIMALS], 
			'21,22', 'Juan Hernández', '1983-09-12', 'M'),
		('14', 'Pradera', ARRAY[ROW(27, 'Lobo', 'Canis lupus', '2013-01-17', 'M')::ANIMALS, ROW(28, 'Zorro', 'Vulpes vulpes', '2014-03-20', 'F')::ANIMALS], 
			'27,28', 'María González', '1987-02-10', 'F');

		INSERT INTO OMNÍVOR (ID, HABITACLE, ANIMAL, ANIMALS_ASIGNATS, NOM_COGNOM, DATA_NAIXEMENT, SEXE) VALUES 
		('3', 'Bosque', ARRAY[ROW(5, 'Oso', 'Ursus arctos', '2009-02-25', 'M')::ANIMALS, ROW(6, 'Cerdos Salvajes', 'Sus scrofa', '2013-03-17', 'F')::ANIMALS], 
			'5,6', 'Laura Martínez', '1988-09-13', 'F'),
		('6', 'Montaña', ARRAY[ROW(11, 'Mapache', 'Procyon lotor', '2017-06-15', 'M')::ANIMALS, ROW(12, 'Jabalí', 'Sus scrofa', '2018-08-27', 'F')::ANIMALS], 
			'11,12', 'Elena Torres', '1990-02-09', 'F'),
		('9', 'Río', ARRAY[ROW(17, 'Nutria', 'Lutra lutra', '2012-12-12', 'M')::ANIMALS, ROW(18, 'Castor', 'Castor fiber', '2013-11-11', 'F')::ANIMALS], 
			'17,18', 'José Pérez', '1986-07-04', 'M'),
		('12', 'Sabana', ARRAY[ROW(23, 'Mandril', 'Mandrillus sphinx', '2014-05-07', 'M')::ANIMALS, ROW(24, 'Baboon', 'Papio anubis', '2015-08-09', 'F')::ANIMALS], 
			'23,24', 'Natalia Domínguez', '1991-04-15', 'F'),
		('15', 'Pradera', ARRAY[ROW(29, 'Zorrillo', 'Mephitis mephitis', '2016-09-09', 'M')::ANIMALS, ROW(30, 'Urraca', 'Pica pica', '2017-10-08', 'F')::ANIMALS], 
			'29,30', 'Carlos Medina', '1989-11-01', 'M');

/*-----Fi d'inserció de dades ------------*/

/*-----Creació de mètodes ---------*/

	-- 1r --
		CREATE FUNCTION insertar_personal(
			p_id VARCHAR(9),
			p_nom_cognom VARCHAR(50),
			p_data_naixement DATE,
			p_sexe CHAR(1)
		) RETURNS VOID AS $$
			BEGIN
				INSERT INTO PERSONAL (ID, NOM_COGNOM, DATA_NAIXEMENT, SEXE)
				VALUES (p_id, p_nom_cognom, p_data_naixement, p_sexe);
			END;
		$$ LANGUAGE plpgsql;
		
	-- 2n --	
		
		CREATE FUNCTION asignar_animales_cuidador(
			p_id VARCHAR(9),
			p_animals_asignats VARCHAR(250),
			p_animal ANIMALS[]
		) RETURNS VOID AS $$
			BEGIN
				UPDATE CUIDADORS
				SET ANIMALS_ASIGNATS = p_animals_asignats,
					ANIMAL = p_animal
				WHERE ID = p_id;
			END;
		$$ LANGUAGE plpgsql;
		
	-- 3r --	
		
		CREATE OR REPLACE FUNCTION listar_guias_y_rutas()
			RETURNS TABLE(
				guia_id VARCHAR(9),
				guia_nom_cognom VARCHAR(50),
				rutas VARCHAR(250)
			) AS $$
			BEGIN
				RETURN QUERY
				SELECT 
					g.ID,
					g.NOM_COGNOM,
					g.RUTES
				FROM 
					GUIES g;
			END;
		$$ LANGUAGE plpgsql;

		
	-- 4t --

		CREATE FUNCTION actualizar_informacion_animal(
			p_animal_id INTEGER,
			p_nom VARCHAR(20),
			p_especie VARCHAR(50),
			p_data_naixement DATE,
			p_sexe CHAR(1)
		) RETURNS VOID AS $$
			BEGIN
				UPDATE HERBÍVOR
				SET ANIMAL = array_replace(ANIMAL, ROW(p_animal_id, '', '', NULL, NULL)::ANIMALS, ROW(p_animal_id, p_nom, p_especie, p_data_naixement, p_sexe)::ANIMALS)
				WHERE p_animal_id = any(SELECT (a).id FROM unnest(ANIMAL) AS a);

				UPDATE CARNÍVOR
				SET ANIMAL = array_replace(ANIMAL, ROW(p_animal_id, '', '', NULL, NULL)::ANIMALS, ROW(p_animal_id, p_nom, p_especie, p_data_naixement, p_sexe)::ANIMALS)
				WHERE p_animal_id = any(SELECT (a).id FROM unnest(ANIMAL) AS a);

				UPDATE OMNÍVOR
				SET ANIMAL = array_replace(ANIMAL, ROW(p_animal_id, '', '', NULL, NULL)::ANIMALS, ROW(p_animal_id, p_nom, p_especie, p_data_naixement, p_sexe)::ANIMALS)
				WHERE p_animal_id = any(SELECT (a).id FROM unnest(ANIMAL) AS a);
			END;
		$$ LANGUAGE plpgsql;
		
	-- 5è --	
		
		CREATE OR REPLACE FUNCTION actualizar_informacion_empleado(
			p_id VARCHAR(9),
			p_nom_cognom VARCHAR(50),
			p_data_naixement DATE,
			p_sexe CHAR(1)
		) RETURNS VOID AS $$
			BEGIN
				UPDATE PERSONAL
				SET NOM_COGNOM = p_nom_cognom,
					DATA_NAIXEMENT = p_data_naixement,
					SEXE = p_sexe
				WHERE ID = p_id;
			END;
		$$ LANGUAGE plpgsql;
		
	-- 6è --		
		
		CREATE OR REPLACE FUNCTION eliminar_empleado(
			p_id VARCHAR(9)
		) RETURNS VOID AS $$
			BEGIN
				DELETE FROM PERSONAL
				WHERE ID = p_id;
			END;
		$$ LANGUAGE plpgsql;

-- PER EXEMPLE LES UTILITZEM AMB AIXÒ -- 

-- 1r SELECT insertar_personal('123456789', 'Juan Pérez', '1985-06-15', 'M');
		
		-- SELECT * FROM PERSONAL WHERE ID = '123456789';

-- 2n SELECT asignar_animales_cuidador('123456789', '1,2', ARRAY[ROW(1, 'Jirafa', 'Giraffa camelopardalis', '2010-05-01', 'F')::ANIMALS, ROW(2, 'Elefante', 'Loxodonta africana', '2008-07-11', 'M')::ANIMALS]);

		-- SELECT * FROM HERBÍVOR;

-- 3r SELECT listar_guias_y_rutas();

-- 4t SELECT actualizar_informacion_animal(1, 'Jirafa', 'Giraffa camelopardalis', '2010-05-01', 'F');

		-- SELECT * FROM HERBÍVOR;

-- 5è SELECT actualizar_informacion_empleado('123456789', 'Juan Pérez López', '1990-06-15', 'M');

		-- SELECT * FROM PERSONAL WHERE ID = '123456789';

-- 6è SELECT eliminar_empleado('123456789');

		-- SELECT * FROM PERSONAL WHERE ID = '123456789';

/*-----Fi de creació de mètodes ---------*/
