CREATE USER 'Consultoria@localhost' IDENTIFIED BY 'Consultoria2024B3';
GRANT SELECT ON viatgesllogers.* TO 'Consultoria@localhost';

-- Hoteles: Totes
CREATE VIEW Hoteles_Consultoria_View AS SELECT * FROM viatgesllogers.Hotels;

-- Ofertas hotels: Totes
CREATE VIEW Ofertas_Hotels_Consultoria_View AS SELECT * FROM viatgesllogers.Ofertes_hotels;

-- Preus: todo menos idCategoria
CREATE VIEW Preus_Consultoria_View AS SELECT PREU_I, PREU_F FROM viatgesllogers.Preus;

-- Fitxa_casa: todo menos idCasa
CREATE VIEW Fitxa_Casa_Consultoria_View AS SELECT IDCASA, NOM, ADRECA, PROVINCIA, EMAIL, TELEFON, CAPACITAT, CATEGORIA FROM viatgesllogers.Fitxa_casa;

-- Fotografies: todo menos idFoto
CREATE VIEW Fotografies_Consultoria_View AS SELECT FOTO FROM viatgesllogers.Fotografies;

-- Llocs_interes: solo mostrar LLOC
CREATE VIEW Llocs_Interes_Consultoria_View AS SELECT LLOC FROM viatgesllogers.Llocs_interes;

-- Opinions: Totes
CREATE VIEW Opinions_Consultoria_View AS SELECT IDCASA, OPINIO, DATA FROM viatgesllogers.Opinions;

-- Aeroports: Totes
CREATE VIEW Aeroports_Consultoria_View AS SELECT NOM, CIUTAT FROM viatgesllogers.Aeroports;

-- Vols: Totes
CREATE VIEW Vols_Consultoria_View AS SELECT CODI, ORIGEN, DESTI, DATA_SORTIDA, HORA_SORTIDA, DATA_ARRIBADA, HORA_ARRIBADA, COMPANYIA, NUM_PLACES FROM viatgesllogers.Vols;

-- Viatges: Totes
CREATE VIEW Viatges_Consultoria_View AS SELECT CODI, ORIGEN, DESTI, DATA_SORTIDA, DATA_ARRIBADA, PREU, NUM_PLACES FROM viatgesllogers.Viatges;

GRANT SELECT ON Hoteles_Consultoria_View TO 'Consultoria@localhost';
GRANT SELECT ON Ofertas_Hotels_Consultoria_View TO 'Consultoria@localhost';
GRANT SELECT ON Preus_Consultoria_View TO 'Consultoria@localhost';
GRANT SELECT ON Fitxa_Casa_Consultoria_View TO 'Consultoria@localhost';
GRANT SELECT ON Fotografies_Consultoria_View TO 'Consultoria@localhost';
GRANT SELECT ON Llocs_Interes_Consultoria_View TO 'Consultoria@localhost';
GRANT SELECT ON Opinions_Consultoria_View TO 'Consultoria@localhost';
GRANT SELECT ON Aeroports_Consultoria_View TO 'Consultoria@localhost';
GRANT SELECT ON Vols_Consultoria_View TO 'Consultoria@localhost';
GRANT SELECT ON Viatges_Consultoria_View TO 'Consultoria@localhost';
