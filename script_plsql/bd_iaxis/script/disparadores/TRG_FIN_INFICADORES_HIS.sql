--------------------------------------------------------
--  DDL for Trigger TRG_FIN_INFICADORES_HIS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_FIN_INFICADORES_HIS" 
   BEFORE UPDATE
   ON fin_indicadores
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
     IF :new.icupog  != :old.icupog AND :new.icupos  != :old.icupos AND :new.ncapfin != :old.ncapfin THEN
       :new.icupogv1  := :old.icupog;
       :new.icuposv1  := :old.icupos;
       :new.ncapfinv1 := :old.ncapfin;
     END IF;
   END IF;
END;
/
ALTER TRIGGER "AXIS"."TRG_FIN_INFICADORES_HIS" ENABLE;
