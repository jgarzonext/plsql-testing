--------------------------------------------------------
--  DDL for Trigger COMCONVENIOS_FEC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."COMCONVENIOS_FEC" 
   BEFORE UPDATE OR DELETE
   ON comconvenios_fec
   FOR EACH ROW
DECLARE
   vcusumod       comconvenios_fec.cusumod%TYPE;
   vfmodifi       comconvenios_fec.fmodifi%TYPE;
BEGIN
   IF :NEW.scomconv || TO_CHAR(:NEW.finivig, 'YYYYMMDD') || TO_CHAR(:NEW.ffinvig, 'YYYYMMDD')
      || :NEW.importe || :NEW.cestado <> :OLD.scomconv || TO_CHAR(:OLD.finivig, 'YYYYMMDD')
                                         || TO_CHAR(:OLD.ffinvig, 'YYYYMMDD') || :OLD.importe
                                         || :OLD.cestado THEN
      IF UPDATING THEN
         vcusumod := :NEW.cusumod;
         vfmodifi := :NEW.fmodifi;
      ELSE
         vcusumod := :OLD.cusumod;
         vfmodifi := :OLD.fmodifi;
      END IF;

      INSERT INTO his_comconvenios_fec
                  (cempres, scomconv, finivig, importe, cestado,
                   falta, cusualt, fmodifi, cusumod, fhist, cusuhist)
           VALUES (:OLD.cempres, :OLD.scomconv, :OLD.finivig, :OLD.importe, :OLD.cestado,
                   :OLD.falta, :OLD.cusualt, vfmodifi, vcusumod, f_sysdate, f_user);
   END IF;

   IF UPDATING THEN
      :NEW.cusumod := NVL(:NEW.cusumod, f_user);
      :NEW.fmodifi := NVL(:NEW.fmodifi, f_sysdate);
   END IF;
END;







/
ALTER TRIGGER "AXIS"."COMCONVENIOS_FEC" ENABLE;
  GRANT UPDATE ON "AXIS"."COMCONVENIOS_FEC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMCONVENIOS_FEC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COMCONVENIOS_FEC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."COMCONVENIOS_FEC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMCONVENIOS_FEC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COMCONVENIOS_FEC" TO "PROGRAMADORESCSI";
