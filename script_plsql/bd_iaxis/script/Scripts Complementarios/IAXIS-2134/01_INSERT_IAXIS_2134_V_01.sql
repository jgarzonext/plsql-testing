/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-2134 TIPO DE SINIESTRO 
   IAXIS-22134 - 04/04/2019  Cambios de campos a no modificables 
***********************************************************************************************************************/ 
DECLARE
--
BEGIN
DELETE FROM axis_literales WHERE cidioma = 8 AND slitera = 9909838;
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 9909838, 'Apoyo técnico');
--
DELETE FROM cfg_form_property WHERE cempres = 24 AND cidcfg = 2 AND cform = 'AXISAGD004' AND citem = 'FRECORDATORIO' AND cprpty = 2;
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 2, 'AXISAGD004', 'FRECORDATORIO', 2, 0);


--
delete from detvalores where cvalor = 800031 and catribu = 0;
--
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (800031, 1, 0, 'Recordatorio');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (800031, 2, 0, 'Recordatorio');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (800031, 3, 0, 'Recordatorio');
--
UPDATE cfg_form_property
   SET cvalue  = 0
 WHERE cempres = 24 
   AND cidcfg  = 2 
   AND cform   =  'AXISAGD004' 
   AND citem   IN ('TAPUNTE','TTITAPU','CCONAPU','FESTAPU')
   AND cprpty  =  2
   AND cvalue  =  1;
--
COMMIT;  
--
END;   

 
