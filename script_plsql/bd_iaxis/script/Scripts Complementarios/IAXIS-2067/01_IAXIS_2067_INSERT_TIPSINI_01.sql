/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-2067 TIPO DE SINIESTRO 
   IAXIS-2067 - 28/03/2019 - Angelo Benavides
***********************************************************************************************************************/ 
DECLARE
--
--
BEGIN
--
DELETE FROM DETVALORES WHERE CVALOR = 8002010;
DELETE FROM VALORES WHERE CVALOR = 8002010;
--   
insert into valores (CVALOR, CIDIOMA, TVALOR)
values (8002010, 1, 'Tipus de sinistre');
insert into valores (CVALOR, CIDIOMA, TVALOR)
values (8002010, 2, 'Tipo de siniestro');
insert into valores (CVALOR, CIDIOMA, TVALOR)
values (8002010, 8, 'Tipo de siniestro');
--
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002010, 1, 0, 'Reclam');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002010, 1, 1, 'Comunicat');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002010, 2, 0, 'Reclamo');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002010, 2, 1, 'Comunicado');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002010, 8, 0, 'Reclamo');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002010, 8, 1, 'Comunicado');
--
UPDATE DETVALORES 
   SET TATRIBU = 'Estudio'
 WHERE CVALOR  = 6
   AND CATRIBU = 5;
--
UPDATE DETVALORES 
   SET TATRIBU = 'Objetado'
 WHERE CVALOR  = 6
   AND CATRIBU = 3;    
--
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89906253;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89906253;
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89906261;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89906261;
--
insert into AXIS_CODLITERALES (SLITERA, CLITERA)
values (89906253, 2);
--
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 89906253, 'Tipus sinistre');
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 89906253, 'Tipo siniestro');
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 89906253, 'Tipo siniestro');
--
insert into axis_codliterales (SLITERA, CLITERA)
values (89906261, 3);
--
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 89906261, 'Objectat');
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 89906261, 'Objetado');
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 89906261, 'Objetado');
--
COMMIT;
--
END;
/