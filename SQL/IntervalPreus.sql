CREATE PROCEDURE BuscarViajesPorPrecio(PrecioMin FLOAT,PrecioMax FLOAT)
BEGIN
    SELECT * 
    FROM viatges 
    WHERE PREU BETWEEN PrecioMin AND PrecioMax;
END