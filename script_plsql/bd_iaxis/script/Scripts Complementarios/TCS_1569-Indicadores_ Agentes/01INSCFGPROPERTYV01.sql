/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script inserta en la tabla cfg_form_property.          
********************************************************************************************************************** */

update CFG_FORM_PROPERTY
set cvalue = 0
where cform = 'AXISAGE003'
and citem = 'CTIPIVA'
and cidcfg = 1;

update CFG_FORM_PROPERTY
set cvalue = 0
where cform = 'AXISAGE003'
and citem = 'CRETENC'
and cidcfg = 1;

COMMIT;
/