/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-2171 TIPO DE SINIESTRO 
   IAXIS-2171 - 09/04/2019 - Angelo Benavides
***********************************************************************************************************************/ 
DECLARE
--
BEGIN
--
UPDATE cfg_form_property C
   SET C.cvalue   = 0
 WHERE C.CFORM  = 'AXISSIN032'
   AND C.CITEM  = 'DSP_DIRECCIONCOL' 
   AND C.CVALUE = 1;
--
UPDATE cfg_form_property C
   SET C.cvalue   = 1
 WHERE C.CFORM  = 'AXISSIN032'
   AND C.CITEM  = 'TZONAOCUDIREC' 
   AND C.CVALUE = 0;
--   
COMMIT;  
--
END;
/