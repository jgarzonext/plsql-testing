--------------------------------------------------------
--  DDL for Trigger TRG_PER_IDENTIFICADOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_IDENTIFICADOR" 
   BEFORE UPDATE OR DELETE
   ON per_identificador
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF :NEW.sperson || ' ' || :NEW.cagente || ' ' || :NEW.ctipide || ' ' || :NEW.nnumide
         || ' ' || :NEW.swidepri || ' ' || :NEW.femisio || ' ' || :NEW.fcaduca <>
            :OLD.sperson || ' ' || :OLD.cagente || ' ' || :OLD.ctipide || ' ' || :OLD.nnumide
            || ' ' || :OLD.swidepri || ' ' || :OLD.femisio || ' ' || :OLD.fcaduca THEN
         BEGIN
            INSERT INTO hisper_identificador
                        (sperson, cagente, ctipide, nnumide,
                         swidepri, femisio, fcaduca, fmovimi, cusualt)
                 VALUES (:OLD.sperson, :OLD.cagente, :OLD.ctipide, :OLD.nnumide,
                         :OLD.swidepri, :OLD.femisio, :OLD.fcaduca, f_sysdate, f_user);
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX THEN
               NULL;
         END;
      END IF;
   ELSIF DELETING THEN
      INSERT INTO hisper_identificador
                  (sperson, cagente, ctipide, nnumide, swidepri,
                   femisio, fcaduca, fmovimi, cusualt)
           VALUES (:OLD.sperson, :OLD.cagente, :OLD.ctipide, :OLD.nnumide, :OLD.swidepri,
                   :OLD.femisio, :OLD.fcaduca, f_sysdate, f_user);
   END IF;
END;









/
ALTER TRIGGER "AXIS"."TRG_PER_IDENTIFICADOR" ENABLE;
