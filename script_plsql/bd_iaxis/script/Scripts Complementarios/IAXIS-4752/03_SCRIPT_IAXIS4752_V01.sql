/* Formatted on 06/08/2019 12:00*/
/* **************************** 06/08/2019 12:00 **********************************************************************
Versin           Descripcin
01.               -Este script modifica el comportamiento del campo 'Fecha de diligenciamiento' para los modos nuevo, 
                   edicin y consulta.
                  -Este script modifica el comportamiento del campo 'Tipo de actividad' para el modo consulta. 
IAXIS-4752         06/08/2019 Daniel Rodrguez
***********************************************************************************************************************/
--
delete from cfg_form_property where cempres = 24 and cform = 'AXISPER047' and citem = 'FDILIGENCIA';
delete from cfg_form_property where cempres = 24 and cform = 'AXISPER047' and citem = 'PER_TIPOACTIVPPAL';
--
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'FDILIGENCIA', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'FDILIGENCIA', 2, 1);
--
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'PER_TIPOACTIVPPAL', 2, 0);
--
COMMIT;
--
/





