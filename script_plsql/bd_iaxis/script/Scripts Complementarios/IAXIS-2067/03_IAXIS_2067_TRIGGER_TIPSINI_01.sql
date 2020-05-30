/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-2067 TIPO DE SINIESTRO 
   IAXIS-2067 - 28/03/2019 - Angelo Benavides
***********************************************************************************************************************/ 
CREATE OR REPLACE TRIGGER "WHO_SIN_MOVSINIESTRO"
   BEFORE INSERT
   ON sin_movsiniestro
   FOR EACH ROW
DECLARE
  vctipsin Sin_Movsiniestro.ctipsin %TYPE;    
BEGIN
   IF :OLD.nsinies IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   END IF;
   IF :NEW.cestsin = 0 THEN
      :NEW.ctipsin := 0;
   ELSIF :NEW.cestsin = 5 THEN
      :NEW.ctipsin := 1;
   ELSIF :NEW.cestsin IN (1,2,3,4) THEN
      BEGIN
        SELECT ctipsin
          INTO vctipsin 
          FROM Sin_Movsiniestro sm
         WHERE sm.nsinies = :new.nsinies
           AND sm.nmovsin = (SELECT MAX(ms.nmovsin)
                               FROM sin_movsiniestro ms
                              WHERE ms.nsinies = sm.nsinies); 
        
      END;
        
      :NEW.ctipsin := vctipsin;
   END IF;
END who_sin_movsiniestro;
/