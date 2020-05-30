/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-2067 TIPO DE SINIESTRO 
   IAXIS-2067 - 28/03/2019 - Angelo Benavides
***********************************************************************************************************************/ 
DECLARE
--
BEGIN
--
UPDATE sin_movsiniestro sm
   SET  sm.ctipsin = 0
 WHERE sm.cestsin = 0;
--
UPDATE sin_movsiniestro sm
   SET  sm.ctipsin = 1
 WHERE sm.cestsin = 5;
--   
UPDATE sin_movsiniestro sm
   SET  sm.ctipsin = 0  
 WHERE sm.cestsin NOT IN (0,5)
   AND sm.nsinies IN (SELECT sr.nsinies
                        FROM sin_tramita_reserva sr
                       WHERE sr.nsinies = sm.nsinies);
--
UPDATE sin_movsiniestro sm
   SET  sm.ctipsin = 1
 WHERE sm.ctipsin IS NULL; 
--
COMMIT;  
--
END;
/