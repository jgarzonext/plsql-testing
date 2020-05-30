--------------------------------------------------------
--  DDL for Trigger COMCONVENIOS_MOD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."COMCONVENIOS_MOD" 
   BEFORE UPDATE OR DELETE
   ON comconvenios_mod
   FOR EACH ROW
DECLARE
   vcusumod       comconvenios_mod.cusumod%TYPE;
   vfmodifi       comconvenios_mod.fmodifi%TYPE;
BEGIN
   IF :NEW.scomconv || TO_CHAR(:NEW.finivig, 'YYYYMMDD') || :NEW.cmodcom || :NEW.pcomisi <>
               :OLD.scomconv || TO_CHAR(:OLD.finivig, 'YYYYMMDD') || :OLD.cmodcom
               || :OLD.pcomisi THEN
      IF UPDATING THEN
         vcusumod := :NEW.cusumod;
         vfmodifi := :NEW.fmodifi;
      ELSE
         vcusumod := :OLD.cusumod;
         vfmodifi := :OLD.fmodifi;
      END IF;

      INSERT INTO his_comconvenios_mod
                  (cempres, scomconv, finivig, cmodcom, pcomisi,
                   falta, cusualt, fmodifi, cusumod, fhist, cusuhist)
           VALUES (:OLD.cempres, :OLD.scomconv, :OLD.finivig, :OLD.cmodcom, :OLD.pcomisi,
                   :OLD.falta, :OLD.cusualt, vfmodifi, vcusumod, f_sysdate, f_user);
   END IF;

   IF UPDATING THEN
      :NEW.cusumod := NVL(:NEW.cusumod, f_user);
      :NEW.fmodifi := NVL(:NEW.fmodifi, f_sysdate);
   END IF;
END;







/
ALTER TRIGGER "AXIS"."COMCONVENIOS_MOD" ENABLE;
  GRANT UPDATE ON "AXIS"."COMCONVENIOS_MOD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMCONVENIOS_MOD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COMCONVENIOS_MOD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."COMCONVENIOS_MOD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMCONVENIOS_MOD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COMCONVENIOS_MOD" TO "PROGRAMADORESCSI";
