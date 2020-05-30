--------------------------------------------------------
--  DDL for Trigger WHO_SINTRAMITEASISTENCIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_SINTRAMITEASISTENCIA" 
   BEFORE INSERT OR UPDATE
   ON sin_tramite_asistencia
   FOR EACH ROW
BEGIN
   IF :OLD.nsinies IS NULL THEN   -- (Es insert)
      :NEW.cusualt := NVL(:NEW.cusualt, f_user);
      :NEW.falta := NVL(:NEW.falta, f_sysdate);
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fusumod := f_sysdate;
   END IF;
END;







/
ALTER TRIGGER "AXIS"."WHO_SINTRAMITEASISTENCIA" ENABLE;
