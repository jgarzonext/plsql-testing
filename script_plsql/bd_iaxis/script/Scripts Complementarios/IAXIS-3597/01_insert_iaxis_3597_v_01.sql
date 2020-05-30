/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-3597 proceso judial 
   IAXIS-3597 - 06/05/2019  proceso judicial
***********************************************************************************************************************/ 
DECLARE
--
BEGIN
--
DELETE FROM axis_literales WHERE slitera = 89906274;
DELETE FROM AXIS_CODLITERALES WHERE slitera = 89906274;
--
insert into AXIS_CODLITERALES (SLITERA, CLITERA)
values (89906274, 6);
--
insert into AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA)
values (2, 89906274, 'Debe realizar el cierre de las tareas pendiente para la tramitacion ');
insert into AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA)
values (8, 89906274, 'Debe realizar el cierre de las tareas pendiente para la tramitacion ');
--
DELETE FROM detvalores WHERE cvalor = 8002016;
DELETE FROM valores WHERE cvalor = 8002016;
--
insert into valores (CVALOR, CIDIOMA, TVALOR)
values (8002016, 1, 'ESTADO TRAMITACION');
insert into valores (CVALOR, CIDIOMA, TVALOR)
values (8002016, 2, 'ESTADO TRAMITACION');
insert into valores (CVALOR, CIDIOMA, TVALOR)
values (8002016, 8, 'ESTADO TRAMITACION');
--
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002016, 1, 1, 'tutela');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002016, 1, 2, 'Executiu');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002016, 1, 3, 'ordinari civil');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002016, 1, 4, 'contractual');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002016, 2, 1, 'Tutela');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002016, 2, 2, 'Ejecutivo');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002016, 2, 3, 'Ordinario civil');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002016, 2, 4, 'Contractual');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002016, 8, 0, 'Abierto');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8002016, 8, 1, 'Cerrado');
--
DELETE FROM cfg_form_property WHERE cform = 'AXISSIN007' AND CIDCFG = 1002 AND citem = 'CESTTRA' AND cprpty = 7 AND cvalue = 0;
--
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1002, 'AXISSIN007', 'CESTTRA', 7, 0);
--
COMMIT;  
--
END; 
/  

 
