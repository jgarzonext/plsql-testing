/* Formatted on 18/06/2019 12:00*/
/* **************************** 18/06/2019 12:00 **********************************************************************
Versi�n           Descripci�n
01.               -Este script deshabilita el bot�n de alta r�pida de personas de la pantalla axisper021
IAXIS-3287         18/06/2019 Daniel Rodr�guez
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




