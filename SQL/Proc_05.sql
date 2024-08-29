CREATE DEFINER=`root`@`localhost` PROCEDURE `CanviTelefon`(v_nif varchar(12), v_telefon int)
BEGIN
update clients
set telefon=v_telefon
where NIF=v_nif;
END