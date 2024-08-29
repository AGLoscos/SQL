CREATE FUNCTION ReservesTotals() 
RETURNS INTEGER
BEGIN
    DECLARE numregs INT;
    DECLARE i INT DEFAULT 0;
    DECLARE total_reserves INT DEFAULT 0;
    DECLARE v_num_places INT;

    SELECT COUNT(*) INTO numregs 
    FROM reserves_viatges;

    DECLARE cc_reserves CURSOR FOR SELECT NUM_PLACES FROM reserves_viatges;
    
    OPEN cc_reserves;

    WHILE i < numregs DO
        FETCH c_reserves INTO v_num_places;
        SET total_reserves = total_reserves + v_num_places;
        SET i = i + 1;
    END WHILE;

    CLOSE cc_reserves;

    RETURN total_reserves;
END 

