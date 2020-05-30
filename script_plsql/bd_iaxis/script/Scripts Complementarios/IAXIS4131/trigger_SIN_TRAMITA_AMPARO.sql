CREATE OR REPLACE TRIGGER WHO_SIN_TRAMITA_AMPARO
   BEFORE INSERT OR UPDATE
   ON SIN_TRAMITA_AMPARO
   FOR EACH ROW
BEGIN
   IF :OLD.nsinies IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := F_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;   
   END IF;   
END;      
/      