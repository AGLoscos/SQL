CREATE DEFINER=`root`@`localhost` FUNCTION `CategoriaMaxima`() RETURNS varchar(100) CHARSET utf8mb4
BEGIN
    DECLARE numregs INT;
    DECLARE i INT DEFAULT 0;
    DECLARE v_categoria_maxima INT;
    DECLARE max_categoria INT;

    DECLARE ccategoria CURSOR FOR SELECT Categoria FROM Hotels;

    SELECT COUNT(*) INTO numregs 
    FROM Hotels;

    OPEN ccategoria;

    FETCH ccategoria INTO v_categoria_maxima;

    SET max_categoria = v_categoria_maxima;

    WHILE i < numregs - 1 DO
        FETCH ccategoria INTO v_categoria_maxima;
        IF max_categoria < v_categoria_maxima THEN
            SET max_categoria = v_categoria_maxima;
        END IF;
        SET i = i + 1;
    END WHILE;

    CLOSE ccategoria;

    RETURN CONCAT('La categoria màxima és ', max_categoria);
END