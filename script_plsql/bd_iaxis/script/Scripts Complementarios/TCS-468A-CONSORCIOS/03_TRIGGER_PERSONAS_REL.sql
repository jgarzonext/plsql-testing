CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_PER_PERSONAS_REL_INS" 
   BEFORE INSERT
   ON per_personas_rel
   FOR EACH ROW
BEGIN
   :NEW.cusuari := f_user;
   :NEW.fmovimi := f_sysdate;
END trg_per_personas_ins;
/
ALTER TRIGGER "TRG_PER_PERSONAS_REL_INS" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_PER_PERSONAS_REL" 
   BEFORE UPDATE
   ON per_personas_rel
   FOR EACH ROW

BEGIN
   IF :NEW.sperson || ' ' || :NEW.cagente || ' ' || :NEW.sperson_rel || ' ' || :NEW.ctipper_rel || ' '
      || :NEW.cusuari || ' ' || :NEW.fmovimi || ' ' || :NEW.pparticipacion || ' ' || :NEW.islider
      <> :OLD.sperson || ' ' || :OLD.cagente || ' '
                                              || :OLD.sperson_rel || ' ' || :OLD.ctipper_rel || ' '
                                              || :OLD.cusuari || ' ' || :OLD.fmovimi || ' '
                                              || :OLD.pparticipacion || ' ' || :OLD.islider 
											  THEN

      INSERT INTO hisper_personas_rel
                  (sperson, cagente, sperson_rel, ctipper_rel, cusuari,
                   fmovimi, pparticipacion, islider, cusumod, fusumod)
           VALUES (:OLD.sperson, :OLD.cagente, :OLD.sperson_rel, :OLD.ctipper_rel, :OLD.cusuari,
                   :OLD.fmovimi, :OLD.pparticipacion, :OLD.islider, f_user, f_sysdate);

   END IF;
END;
/
ALTER TRIGGER "TRG_PER_PERSONAS_REL" ENABLE;