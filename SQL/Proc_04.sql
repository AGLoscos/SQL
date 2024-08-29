CREATE PROCEDURE InsertOpinions (v_idcasa int, v_opinio varchar(150), v_data date)
BEGIN
insert into opinions
values (v_idcasa, upper(v_opinio), v_data);
END
