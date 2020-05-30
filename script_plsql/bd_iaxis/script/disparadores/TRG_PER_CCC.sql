--------------------------------------------------------
--  DDL for Trigger TRG_PER_CCC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_CCC" 
   BEFORE DELETE OR UPDATE
   ON per_ccc
   REFERENCING NEW AS NEW OLD AS OLD
   FOR EACH ROW
-- 08/11/2011 - 19985 LCOL_A001-Control de las matriculas (prenotificaciones)
DECLARE
   vnorden        hisper_ccc.norden%TYPE;
BEGIN
   IF UPDATING THEN
      IF :NEW.sperson || ' ' || :NEW.cagente || ' ' || :NEW.ctipban || ' ' || :NEW.cbancar
         || ' ' || :NEW.fbaja || ' ' || :NEW.cdefecto || ' ' || :NEW.cvalida || ' '
         || :NEW.cpagsin || ' ' || :NEW.fvencim || ' '
         || :NEW.tseguri   -- 19985 LCOL_A001-Control de las matriculas
                        <> :OLD.sperson || ' ' || :OLD.cagente || ' ' || :OLD.ctipban || ' '
                           || :OLD.cbancar || ' ' || :OLD.fbaja || ' ' || :OLD.cdefecto || ' '
                           || :OLD.cvalida || ' ' || :OLD.cpagsin || ' ' || :OLD.fvencim
                           || ' ' || :OLD.tseguri   -- 19985 LCOL_A001-Control de las matriculas
                                                 THEN
         vnorden := pac_persona.f_shisccc(:OLD.sperson);

         INSERT INTO hisper_ccc
                     (sperson, cagente, ctipban, cbancar, fbaja,
                      cdefecto, norden, cusuari, fmovimi, fusumov, cusumov,
                      cnordban, cvalida, cpagsin, fvencim,
                      tseguri   -- 19985 LCOL_A001-Control de las matriculas
                             )
              VALUES (:OLD.sperson, :OLD.cagente, :OLD.ctipban, :OLD.cbancar, :OLD.fbaja,
                      :OLD.cdefecto, vnorden, :OLD.cusumov, :OLD.fusumov, f_sysdate, f_user,
                      :OLD.cnordban, :OLD.cvalida, :OLD.cpagsin, :OLD.fvencim,
                      :OLD.tseguri   -- 19985 LCOL_A001-Control de las matriculas
                                  );

         :NEW.cusumov := f_user;
         :NEW.fusumov := f_sysdate;
      END IF;
   ELSIF DELETING THEN
      vnorden := pac_persona.f_shisccc(:OLD.sperson);

      INSERT INTO hisper_ccc
                  (sperson, cagente, ctipban, cbancar, fbaja,
                   cdefecto, norden, cusuari, fmovimi, fusumov, cusumov,
                   cnordban, cvalida, cpagsin, fvencim,
                   tseguri   -- 19985 LCOL_A001-Control de las matriculas
                          )
           VALUES (:OLD.sperson, :OLD.cagente, :OLD.ctipban, :OLD.cbancar, :OLD.fbaja,
                   :OLD.cdefecto, vnorden, :OLD.cusumov, :OLD.fusumov, f_sysdate, f_user,
                   :OLD.cnordban, :OLD.cvalida, :OLD.cpagsin, :OLD.fvencim,
                   :OLD.tseguri   -- 19985 LCOL_A001-Control de las matriculas
                               );
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'trigger', 1, 'trigger hisper ', SQLERRM);
END;








/
ALTER TRIGGER "AXIS"."TRG_PER_CCC" ENABLE;
