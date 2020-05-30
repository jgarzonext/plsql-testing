--------------------------------------------------------
--  DDL for Trigger TRG_AGE_CONTACTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AGE_CONTACTOS" 
   BEFORE UPDATE OR DELETE
   ON age_contactos
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF :NEW.cagente || ' ' || :NEW.ctipo || ' ' || :NEW.norden || ' ' || :NEW.nombre || ' '
         || :NEW.cargo || ' ' || :NEW.iddomici || ' ' || :NEW.telefono || ' '
         || :NEW.telefono2 || ' ' || :NEW.fax || ' ' || :NEW.web || ' ' || :NEW.email <>
            :OLD.cagente || ' ' || :OLD.ctipo || ' ' || :OLD.norden || ' ' || :OLD.nombre
            || ' ' || :OLD.cargo || ' ' || :OLD.iddomici || ' ' || :OLD.telefono || ' '
            || :OLD.telefono2 || ' ' || :OLD.fax || ' ' || :OLD.web || ' ' || :OLD.email THEN
         INSERT INTO hisage_contactos
                     (cagente, ctipo, norden, nombre, cargo,
                      iddomici, telefono, telefono2, fax, web,
                      email, cusumod, fusumod)
              VALUES (:OLD.cagente, :OLD.ctipo, :OLD.norden, :OLD.nombre, :OLD.cargo,
                      :OLD.iddomici, :OLD.telefono, :OLD.telefono2, :OLD.fax, :OLD.web,
                      :OLD.email, f_user, f_sysdate);
      END IF;
   ELSIF DELETING THEN
      INSERT INTO hisage_contactos
                  (cagente, ctipo, norden, nombre, cargo,
                   iddomici, telefono, telefono2, fax, web,
                   email, cusumod, fusumod)
           VALUES (:OLD.cagente, :OLD.ctipo, :OLD.norden, :OLD.nombre, :OLD.cargo,
                   :OLD.iddomici, :OLD.telefono, :OLD.telefono2, :OLD.fax, :OLD.web,
                   :OLD.email, f_user, f_sysdate);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END trg_age_contactos;







/
ALTER TRIGGER "AXIS"."TRG_AGE_CONTACTOS" ENABLE;
