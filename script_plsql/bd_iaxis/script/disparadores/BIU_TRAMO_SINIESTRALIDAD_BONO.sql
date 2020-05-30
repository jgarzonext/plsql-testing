--------------------------------------------------------
--  DDL for Trigger BIU_TRAMO_SINIESTRALIDAD_BONO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BIU_TRAMO_SINIESTRALIDAD_BONO" 
   BEFORE INSERT OR UPDATE
   ON tramo_siniestralidad_bono
   FOR EACH ROW
BEGIN
   -- en el INSERT solo informar el usuario y la fecha en que se crea el registro
   IF INSERTING THEN
      :NEW.cusualta := f_user;
      :NEW.falta := f_sysdate;
   END IF;

   -- en el UPDATE solo informar el usuario y la fecha en que se modifica el registro
   IF UPDATING THEN
      :NEW.cusumod := f_user;
      :NEW.fultmod := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END biu_tramo_siniestralidad_bono;





/
ALTER TRIGGER "AXIS"."BIU_TRAMO_SINIESTRALIDAD_BONO" ENABLE;
