--------------------------------------------------------
--  DDL for Trigger WHO_TERMINALES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_TERMINALES" 
 BEFORE INSERT OR UPDATE ON terminales
 FOR EACH ROW
BEGIN
    IF :OLD.CTERMINAL IS NULL THEN     -- (Es insert)
      :NEW.CUSUALT := F_USER;
      :NEW.FALTA   := F_SYSDATE;
    ELSE                -- (Es update)
      :NEW.CUSUMOD := F_USER;
      :NEW.FMODIF := F_SYSDATE;
	END IF;
END;









/
ALTER TRIGGER "AXIS"."WHO_TERMINALES" ENABLE;
