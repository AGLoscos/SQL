CREATE PROCEDURE CanviEmail(v_nif VARCHAR(12), v_email VARCHAR(100))
BEGIN
    UPDATE CLIENTS
    SET EMAIL = v_email
    WHERE NIF = v_nif;
END;
