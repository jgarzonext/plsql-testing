create or replace TRIGGER "TRG_PER_PERSONAS_REL" 
   BEFORE UPDATE OR DELETE
   ON per_personas_rel
   FOR EACH ROW
DECLARE
   VSPERSON        NUMBER:=0;
   mensajes   t_iax_mensajes;
BEGIN
IF UPDATING THEN
   IF :NEW.sperson || ' ' || :NEW.cagente || ' ' || :NEW.sperson_rel || ' ' || :NEW.ctipper_rel || ' '
      || :NEW.cusuari || ' ' || :NEW.fmovimi || ' ' || :NEW.pparticipacion || ' ' || :NEW.islider || ' ' || :NEW.cagrupa
      <> :OLD.sperson || ' ' || :OLD.cagente || ' '
                                              || :OLD.sperson_rel || ' ' || :OLD.ctipper_rel || ' '
                                              || :OLD.cusuari || ' ' || :OLD.fmovimi || ' '
                                              || :OLD.pparticipacion || ' ' || :OLD.islider  || ' ' || :OLD.cagrupa
											  THEN

      INSERT INTO hisper_personas_rel
                  (sperson, cagente, sperson_rel, ctipper_rel, cusuari,
                   fmovimi, pparticipacion, islider, cagrupa, cusumod, fusumod)
           VALUES (:OLD.sperson, :OLD.cagente, :OLD.sperson_rel, :OLD.ctipper_rel, :OLD.cusuari,
                   :OLD.fmovimi, :OLD.pparticipacion, :OLD.islider, :OLD.cagrupa, f_user, f_sysdate);

   END IF;
 ELSIF DELETING THEN
      
      BEGIN
      SELECT SPERSON
        INTO VSPERSON
      FROM TOMADORES WHERE SPERSON =:OLD.sperson AND CAGRUPA =:OLD.cagrupa ;
      EXCEPTION WHEN OTHERS THEN
        VSPERSON := 0;
      END;
      
      IF VSPERSON IS NULL OR VSPERSON = 0 THEN
          INSERT INTO hisper_personas_rel
                      (sperson, cagente, sperson_rel, ctipper_rel, cusuari,
                       fmovimi, pparticipacion, islider, cagrupa, cusumod, fusumod)
               VALUES (:OLD.sperson, :OLD.cagente, :OLD.sperson_rel, :OLD.ctipper_rel, :OLD.cusuari,
                       :OLD.fmovimi, :OLD.pparticipacion, :OLD.islider, :OLD.cagrupa, f_user, f_sysdate);
      ELSE
        pac_iobj_mensajes.p_tratarmensaje(mensajes, ' ', 2292, 99, :OLD.sperson);
      END IF;
   END IF;
END;
/