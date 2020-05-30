/* Formatted on 18/06/2019 12:00*/
/* **************************** 18/06/2019 12:00 **********************************************************************
Versión           Descripción
01.               -Este script deshabilita el botón de alta rápida de personas de la pantalla axisper021
IAXIS-3287         18/06/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
UPDATE cfg_form_property c 
   SET c.cvalue = 0 
 WHERE c.cempres = 24 
   AND c.cidcfg IN (1002,1001,1009) 
   AND c.cprpty = 1 
   AND c.citem = 'BT_NUEVA_PERSONA' 
   AND c.cform = 'AXISPER021';
--
COMMIT;
/




