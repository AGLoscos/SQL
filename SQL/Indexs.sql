-- Crea un índex en la taula "clients" que sigui el "NOM".
CREATE INDEX i_nom ON clients (NOM);

-- Crea un índex en la taula "vols" que sigui la "data_sortida".
CREATE INDEX i_dataSortida ON vols (data_sortida);

-- Crea un índex en la taula "hotels" que sigui tant el "CODI" com el "NOM".
CREATE INDEX i_codi_nom ON hotels (CODI, NOM);

--  Crea un índex en la taula "ofertes_hotels" que sigui tant el "PREU_INDIVIDUAL" com el "PREU_DOBLE".
CREATE INDEX i_preuIndividual_preuDoble ON ofertes_hotels (PREU_INDIVIDUAL, PREU_DOBLE);

-- Crea un índex en la taula "fitxa_casa" que sigui el "IDCASA".
CREATE INDEX i_idCasa ON fitxa_casa (IDCASA);
