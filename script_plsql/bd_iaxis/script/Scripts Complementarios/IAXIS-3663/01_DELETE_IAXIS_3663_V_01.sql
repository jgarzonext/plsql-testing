/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-2134 TIPO DE SINIESTRO 
   IAXIS-22134 - 04/04/2019  Cambios de campos a no modificables 
***********************************************************************************************************************/ 
DECLARE
--
BEGIN
--
DELETE  FROM cfg_form_dep c WHERE c.cempres = 24 AND c.ccfgdep = 9907318 AND c.citorig = 'CESTADO' AND c.CITDEST = 'OBSERV';
--
DELETE FROM detvalores WHERE cvalor = 21 AND catribu = 40;
--
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
VALUES (21, 1, 40, 'Objetado');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
VALUES (21, 2, 40, 'Objetado');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
VALUES (21, 8, 40, 'Objetado');
--
COMMIT;  
--
END; 
/  

 
